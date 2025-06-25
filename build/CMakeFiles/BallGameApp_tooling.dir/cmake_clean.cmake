file(REMOVE_RECURSE
  "BallGame/qml/Ball.qml"
  "BallGame/qml/GameWorld.qml"
  "BallGame/qml/Sword.qml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/BallGameApp_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
