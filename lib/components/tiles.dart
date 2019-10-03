import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:toads_and_frogs/pages/game.dart';

class Tile {
  double tileSize;
  double posX, posY;
  final MyGame game;
  Rect tileRect;
  Paint tilePaint;
  int tileId;

  Tile(this.game, this.posX, this.posY, this.tileId) {
    tileSize = game.tileSize;
    tileRect = Rect.fromLTWH(posX, posY, tileSize, tileSize);
    tilePaint = Paint()
      ..color = Colors.amber
      ..strokeWidth = tileSize * 0.05
      ..style = PaintingStyle.stroke;
  }

  void render(Canvas c) {
    c.drawRect(tileRect, tilePaint);
  }

  void update() {}

  void shiftEffect(double u, double fx, double lx) {

  }
  
  void shiftEm(Offset d, double fx, double lx) {
    if (d.dx > 0) {
      // moving right
      if (fx + d.dx < tileSize / 2) {
        tileRect = tileRect.shift(d);
      }
    } else {
      //moving left
      if (lx + d.dx > game.screenWidth - tileSize / 2) {
        tileRect = tileRect.shift(d);
      }
    }
  }
}
