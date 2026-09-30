import 'package:oop7/game_object.dart';

abstract class DamageableObject extends GameObject {
  int maxHealth;
  int _health;

  bool isDead() {

  }

  void takeDamage(int damage) {

  }

  void onKilled() {

  }
}