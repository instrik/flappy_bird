import 'dart:io';

import 'package:flappy_bird/game/flappy_bird_game.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';

import '../game/configuration.dart';
import '../game/pipe_position.dart';

class PipeGroup extends PositionComponent with HasGame<FlappyBirdGame> {
  PipeGroup();

  final _random = Random();
  // @override // converted to comment later on
  Future<void> onLoad() async {
    position.x = gameRef.size.x;

    final heightMinusGround = gameRef.size.y - Config.groundHeight;
    final spacing = 100 + _random.nextDouble() * (heightMinusGround / 4);
    final centerY =
        spacing + _random.nextDouble() * (heightMinusGround - spacing);

    addAll([
      Pipe(pipePosition: PipePosition.top, height: centerY - spacing / 2),
      Pipe(
          pipePosition: PipePosition.bottom,
          height: heightMinusGround - (centerY + spacing / 2)),
    ]);
  }

  // @override //converted to comment later on
  void update(double dt) {
    super.update(dt);
    var position; // added later on
    position.x -= Config.gameSpeed * dt;

    if (position.x < -10) {
      removeFromParent();
      debugPrint('Removed');
    }
  }
}
