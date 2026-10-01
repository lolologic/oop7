import 'package:oop7/game_object.dart';

abstract class DamageableObject extends GameObject {
  int maxHealth;
  int _health;

  DamageableObject({
    required super.name, 
    required super.posX, 
    required super.posY, 
    this.maxHealth = 100,
  }) : _health = maxHealth;

  bool isDead() {
    return _health <= 0;
  }

  void takeDamage(int damage) {
    _health = _health - damage;

    if (isDead()) {
      onKilled();
    }
  }

  void onKilled() {

  }
}