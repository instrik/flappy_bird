import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'game/flappy_bird_game.dart';

void main() {
  final game = FlappyBirdGame();
  runApp(
    GameWidget(
      game: game,
      initialActiveOverlays: [MainMenuScreen.id],
      overlayBuilderMap: {
        'mainMenu': (context, _) => MainMenuScreen(game: game),
      },
    ),
  );
}
