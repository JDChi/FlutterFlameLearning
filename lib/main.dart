import 'package:flame/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flame_learning/chapter1/box_game.dart';
import 'package:flutter_flame_learning/chapter2/langaw_game.dart';

// /// Chapter 1
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   Util flameUtil = Util();
//   await flameUtil.fullScreen();
//   await flameUtil.setOrientation(DeviceOrientation.portraitUp);
//
//   BoxGame game = BoxGame();
//   TapGestureRecognizer tapper = TapGestureRecognizer();
//   tapper.onTapDown = game.onTapDown;
//   flameUtil.addGestureRecognizer(tapper);
//   runApp(game.widget);
// }

/// Chapter 2
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  LangawGame langawGame = LangawGame();
  TapGestureRecognizer tapper = TapGestureRecognizer();
  tapper.onTapDown = langawGame.onTapDown;
  flameUtil.addGestureRecognizer(tapper);
  runApp(langawGame.widget);
}
