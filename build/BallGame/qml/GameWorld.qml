import QtQuick 2.15
import QtQuick.Controls 2.15
import BallGame 1.0

Window {
  id: root
  width: 600
  height: 400
  visible: true
  property bool is_win: false

  Rectangle {
    anchors.fill: parent
    color: "#202020"
  }

  Sword {
    id: sword
    x: 300
    y: 200
  }

  property var ball_1d: []

  function init_ball_1d()
  {
    ball_1d = [
      { dx: 2, dy: 1, color: "red" },
      { dx: 1, dy: -2, color: "green" },
      { dx: -1.5, dy: 1.2, color: "blue" },
      { dx: 1.5, dy: 3, color: "pink" },
      { dx: 0.5, dy: 2, color: "orange" }
    ];
  }

  Component.onCompleted: {
    init_ball_1d();
  }

  Repeater {
    model:  ball_1d.length

    Ball {
      name: "ball" + index
      dx: ball_1d[index].dx
      dy: ball_1d[index].dy
      color: ball_1d[index].color
      sword_ref: sword
      scene_root: root
      Component.onCompleted: {
        console.log("Hello ", name)
      }
    }
  }
}

