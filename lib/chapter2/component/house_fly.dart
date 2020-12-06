import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flutter_flame_learning/chapter2/langaw_game.dart';

import 'fly.dart';

class HouseFly extends Fly {
  HouseFly({LangawGame game, double x, double y}) : super(game: game) {
    flyingSprite = List();
    flyingSprite.add(Sprite("flies/house-fly-1.png"));
    flyingSprite.add(Sprite("flies/house-fly-2.png"));
    deadSprite = Sprite("flies/house-fly-dead.png");
    flyRect = Rect.fromLTWH(x, y, game.tileSize * 1.5, game.tileSize * 1.5);
  }
}
