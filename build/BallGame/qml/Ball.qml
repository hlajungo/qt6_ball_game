import QtQuick 2.15

Item {
  id: ball
  property string name: "ball"
  property bool is_ball: true
  property color color: "red"
  property real dx: 1
  property real dy: 1
  property real radius: 20
  property alias alive: ball.visible
  property bool has_sword: false
  property Item sword_ref
  property Window scene_root
  property real initial_x: 100
  property real initial_y: 100

  x: initial_x
  y: initial_y
  width: radius * 2
  height: radius * 2

  Rectangle {
    anchors.centerIn: parent
    width: parent.width
    height: parent.height
    radius: width / 2
    color: has_sword ? "gold" : ball.color
    visible: ball.visible
  }

  Timer {
    interval: 16
    running: true
    repeat: true
    onTriggered: {
      // win
      if (scene_root.is_win == true)
      {
        running = false
        return
      }


      // dead
      if (ball.visible == false)
        return

      // move
      ball.x += dx
      ball.y += dy
    }
  }
  Timer {
    interval: 1
    running: true
    repeat: true
    function rectsIntersect(ax, ay, aw, ah, bx, by, bw, bh) {
      return ax < bx + bw &&
      ax + aw > bx &&
      ay < by + bh &&
      ay + ah > by;
    }

    onTriggered: {
      // win
      if (scene_root.is_win == true)
      {
        running = false
        return
      }

      // dead
      if (ball.visible == false)
        return

      // x wall bounce back
      if (x <= 0)
      {
        dx = Math.abs(dx)
      }

      if (x + width >= scene_root.width)
      {
        dx = -Math.abs(dx)
      }

      // y wall bounce back
      if (y <= 0)
      {
        dy = Math.abs(dy)
      }

      if (y + height >= scene_root.height)
      {
        dy = -Math.abs(dy)
      }

      // get sword
      if (has_sword == false &&
          sword_ref.visible == true &&
          rectsIntersect(x, y, width, height,
            sword_ref.x, sword_ref.y, sword_ref.width, sword_ref.height)
        )
      {
        console.log(ball.name + " get sword")
        has_sword = true
        sword_ref.visible = false
      }
      
      let is_any_visible = false;
      // collapse other ball
      for (var i = 0; i < scene_root.contentItem.children.length; ++i)
      {
        var other = scene_root.contentItem.children[i];
        // non-urself ball only
        if (other.is_ball !== true  || other.name == name)
          continue;

        if (other.visible == true)
        {
          is_any_visible = true
        }
        else
        {
          // dead ball
          continue
        }


        if (rectsIntersect(x, y, width, height, other.x, other.y, other.width, other.height))
        {
          if (has_sword)
          {
            console.log(name + " kill " + other.name)
            other.visible = false
            has_sword = false
            sword_ref.x = other.x
            sword_ref.y = other.y
            sword_ref.visible = true
          }

          // ball touch other ball
          console.log(name + " touch "+other.name)
          dx = -dx
          dy = -dy
          other.dx = -other.dx
          other.dy = -other.dy
        }
      }
      if (is_any_visible == false)
      {
        scene_root.is_win = true
        console.log(name + " win")
      }
    }
  }
}

