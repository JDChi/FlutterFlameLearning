import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flutter_flame_learning/chapter2/component/fly.dart';
import 'package:flutter_flame_learning/chapter2/langaw_game.dart';

class HungryFly extends Fly {
  HungryFly({LangawGame game, double x, double y}) : super(game: game) {
    flyingSprite = List();
    flyingSprite.add(Sprite("flies/hungry-fly-1.png"));
    flyingSprite.add(Sprite("flies/hungry-fly-2.png"));
    deadSprite = Sprite("flies/hungry-fly-dead.png");
    flyRect = Rect.fromLTWH(x, y, game.tileSize * 1.65, game.tileSize * 1.65);
  }
}
