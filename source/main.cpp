#include <QGuiApplication>
#include <QQmlApplicationEngine>

int
main (int argc, char* argv[])
{
  QGuiApplication app (argc, argv);
  QQmlApplicationEngine engine;
  engine.load (QUrl (u"qrc:/BallGame/qml/GameWorld.qml"_qs));
  return app.exec ();
}
