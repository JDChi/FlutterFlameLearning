import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class BoxGame extends Game {
  Size screenSize;

  @override
  void render(Canvas canvas) {
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Colors.black;
    canvas.drawRect(bgRect, bgPaint);
  }

  @override
  void update(double t) {

  }

  @override
  void resize(Size size) {
    screenSize = size;
    super.resize(size);
  }
}
