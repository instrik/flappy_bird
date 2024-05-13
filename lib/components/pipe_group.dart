import 'package:flappy_bird/game/flappy_bird_game.dart';

class PipeGroup extends PositionComponent with HasGame<FlappyBirdGame> {
  PipeGroup();

  @override
  Future<void> onLoad() async {
    position.x = gameRef.size.x;

    addAll([
      Pipe(pipePosition: PipePosition.top, height: 100),
      Pipe(pipePosition: PipePosition.bottom, height: 200),
    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x -= Config.gameSpeed * dt;
  }
}
