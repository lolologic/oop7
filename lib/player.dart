import 'package:oop7/damageable_object.dart';

class Player extends DamageableObject {
  int _score = 0;
  int _livesRemaining = 3;

  Player({required super.name, required super.posX, required super.posY});

  int get score {
    return _score;
  }

  int get livesRemaining {
    return _livesRemaining;
  }

  void addScore() {
    _score++;
  }

  @override
  void onKilled() {
    _livesRemaining--;

    if (_livesRemaining > 0) {
      restoreHealth();
    } else {
      super.onKilled();
    }
  }
}
