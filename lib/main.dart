import 'package:flame/flame.dart';
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

  Flame.images.loadAll([
    'bg/backyard.png',
    'flies/agile-fly-1.png',
    'flies/agile-fly-2.png',
    'flies/agile-fly-dead.png',
    'flies/drooler-fly-1.png',
    'flies/drooler-fly-2.png',
    'flies/drooler-fly-dead.png',
    'flies/house-fly-1.png',
    'flies/house-fly-2.png',
    'flies/house-fly-dead.png',
    'flies/hungry-fly-1.png',
    'flies/hungry-fly-2.png',
    'flies/hungry-fly-dead.png',
    'flies/macho-fly-1.png',
    'flies/macho-fly-2.png',
    'flies/macho-fly-dead.png',
  ]);

  LangawGame langawGame = LangawGame();
  TapGestureRecognizer tapper = TapGestureRecognizer();
  tapper.onTapDown = langawGame.onTapDown;
  flameUtil.addGestureRecognizer(tapper);
  runApp(langawGame.widget);
}
