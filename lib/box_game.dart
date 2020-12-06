import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class BoxGame extends Game {
  Size screenSize;
  bool hasWon = false;

  @override
  void render(Canvas canvas) {
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Colors.black;
    canvas.drawRect(bgRect, bgPaint);

    double screenCenterX = screenSize.width / 2;
    double screenCenterY = screenSize.height / 2;
    Rect boxRect =
        Rect.fromLTWH(screenCenterX - 75, screenCenterY - 75, 150, 150);
    Paint boxPaint = Paint();
    if (hasWon) {
      boxPaint.color = Colors.green;
    } else {
      boxPaint.color = Colors.white;
    }

    canvas.drawRect(boxRect, boxPaint);
  }

  @override
  void update(double t) {}

  @override
  void resize(Size size) {
    screenSize = size;
    super.resize(size);
  }

  void onTapDown(TapDownDetails details) {
    double screenCenterX = screenSize.width / 2;
    double screenCenterY = screenSize.height / 2;
    if (details.globalPosition.dx >= screenCenterX - 75 &&
        details.globalPosition.dx <= screenCenterX + 75 &&
        details.globalPosition.dy >= screenCenterY - 75 &&
        details.globalPosition.dy <= screenCenterY + 75) {
      hasWon = true;
    } else {
      hasWon = false;
    }
  }
}
