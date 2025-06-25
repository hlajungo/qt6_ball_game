cmake_minimum_required(VERSION 3.16)
project(BallGame LANGUAGES CXX)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(BallGameApp
    source/main.cpp
)

qt_add_qml_module(BallGameApp
    URI BallGame
    VERSION 1.0
    QML_FILES
        qml/GameWorld.qml
        qml/Ball.qml
        qml/Sword.qml
)

target_link_libraries(BallGameApp PRIVATE Qt6::Quick)

