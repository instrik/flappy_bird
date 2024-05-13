import 'package:flappy_bird/game/flappy_bird_game.dart';
import 'package:flutter/material.dart';
import 'package:flame/components.dart';
import 'package:flappy_bird/game/assets.dart';

class Background extends SpriteComponent with HasGameRef<FlappyBirdGame> {
  Background();

  @override
  Future<void> onLoad() async {
    final background = await Flame.images.load(Assets.background);
    size = gameRef.size;
    sprite = Sprite(background);
  }
}
