import 'package:oop7/damageable_object.dart';

enum Color { green, blue, red, yellow }

enum ThreatCategory {
  low(Color.green, 10),
  medium(Color.blue, 20),
  high(Color.red, 40),
  extreme(Color.yellow, 100);

  final Color color;
  final int addHP;

  const ThreatCategory(this.color, this.addHP);
}

class Monster extends DamageableObject {
  final int _threatLevel;
  final Color _color;

  Monster({
    required super.name,
    required super.posX,
    required super.posY,
    required int threatLevel,
  }) : _threatLevel = threatLevel,
       _color = _getThreatCategory(threatLevel).color,
       super(maxHealth: _getMaxHealth(threatLevel));

  static ThreatCategory _getThreatCategory(int threatLevel) {
    if (threatLevel < 20) {
      return ThreatCategory.low;
    } else if (threatLevel < 40) {
      return ThreatCategory.medium;
    } else if (threatLevel < 60) {
      return ThreatCategory.high;
    } else {
      return ThreatCategory.extreme;
    }
  }

  static int _getMaxHealth(int threatLevel) {
    int maxHealth = 100;

    for (int level = 0; level < threatLevel; level++) {
      maxHealth += _getThreatCategory(level).addHP;
    }

    return maxHealth;
  }

  int get threatLevel {
    return _threatLevel;
  }

  Color get color {
    return _color;
  }

  String makeNoise() {
    return 'Monster-Noises';
  }

  @override
  void onKilled() {
    print('$name wurde besiegt.');
    super.onKilled();
  }
}
