import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:flutter_flame_learning/chapter2/langaw_game.dart';

class BackYard {
  final LangawGame game;
  Sprite bgSprite;
  Rect bgRect;

  BackYard(this.game) {
    bgSprite = Sprite("bg/backyard.png");
    bgRect = Rect.fromLTWH(0, game.screenSize.height - (game.tileSize * 23),
        game.tileSize * 9, game.tileSize * 23);
  }

  void render(Canvas canvas) {
    bgSprite.renderRect(canvas, bgRect);
  }

  void update(double t) {}
}
