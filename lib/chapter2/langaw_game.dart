import 'dart:math';
import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flame_learning/chapter2/component/agile_fly.dart';
import 'package:flutter_flame_learning/chapter2/component/backyard.dart';
import 'package:flutter_flame_learning/chapter2/component/drooler_fly.dart';
import 'package:flutter_flame_learning/chapter2/component/fly.dart';
import 'package:flutter_flame_learning/chapter2/component/house_fly.dart';
import 'package:flutter_flame_learning/chapter2/component/hungry_fly.dart';
import 'package:flutter_flame_learning/chapter2/component/macho_fly.dart';

class LangawGame extends Game {
  Size screenSize;
  double tileSize;
  List<Fly> flies;
  Random random;
  BackYard background;

  LangawGame() {
    _initialize();
  }

  @override
  void render(Canvas canvas) {
    background.render(canvas);
    flies.forEach((fly) => fly.render(canvas));
  }

  @override
  void update(double t) {
    flies.forEach((fly) => fly.update(t));
    flies.removeWhere((fly) => fly.isOffScreen);
  }

  @override
  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 9;
    super.resize(size);
  }

  void spawnFly() {
    double x = random.nextDouble() * (screenSize.width - tileSize * 2.025);
    double y = random.nextDouble() * (screenSize.height - tileSize * 2.025);

    switch (random.nextInt(5)) {
      case 0:
        flies.add(HouseFly(game: this, x: x, y: y));
        break;
      case 1:
        flies.add(DroolerFly(game: this, x: x, y: y));
        break;
      case 2:
        flies.add(AgileFly(game: this, x: x, y: y));
        break;
      case 3:
        flies.add(MachoFly(game: this, x: x, y: y));
        break;
      case 4:
        flies.add(HungryFly(game: this, x: x, y: y));
        break;
    }
  }

  void onTapDown(TapDownDetails details) {
    flies.forEach((fly) {
      if (fly.flyRect.contains(details.globalPosition)) {
        fly.onTapDown();
      }
    });
  }

  void _initialize() async {
    resize(await Flame.util.initialDimensions());
    flies = List();
    random = Random();
    background = BackYard(this);
    spawnFly();
  }
}
