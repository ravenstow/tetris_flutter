
class Game {
  final Duration time;
  final Difficulty difficulty;
  int get speed => difficulty.speed;

  Game(this.time, this.difficulty);
}

enum Difficulty {
  easy(1),
  normal(3),
  hard(5);
  final int speed;

  const Difficulty(this.speed);
}