import 'package:oop7/monster.dart';
import 'package:oop7/player.dart';

void main() {
  Player player = Player(name: 'Player', posX: 0, posY: 0);

  Monster monster = Monster(
    name: 'Monster',
    posX: 10,
    posY: 10,
    threatLevel: 0,
  );

  print('Spielstart');
  print('Player Score: ${player.score}');
  print('Player Leben: ${player.livesRemaining}');
  print('Monster Level: ${monster.threatLevel}');
  print('Monster HP: ${monster.maxHealth}');
  print('Monster Farbe: ${monster.color.name}');
  print('Monster Geräusch: ${monster.makeNoise()}');

  // Player besiegt das Monster.
  monster.takeDamage(monster.maxHealth);

  // Konsequenzen des Monster-Kills.
  player.addScore();

  int nextThreatLevel = monster.threatLevel + 1;

  monster = Monster(
    name: 'Monster',
    posX: 10,
    posY: 10,
    threatLevel: nextThreatLevel,
  );

  print('');
  print('Monster besiegt');
  print('Player Score: ${player.score}');
  print('Neues Monster Level: ${monster.threatLevel}');
  print('Neues Monster HP: ${monster.maxHealth}');
  print('Neues Monster Farbe: ${monster.color.name}');

  print('');

  // Monster besiegt den Player zum ersten Mal.
  player.takeDamage(player.maxHealth);
  print('Player besiegt');
  print('Verbleibende Leben: ${player.livesRemaining}');

  print('');

  // Monster besiegt den Player zum zweiten Mal.
  player.takeDamage(player.maxHealth);
  print('Player besiegt');
  print('Verbleibende Leben: ${player.livesRemaining}');

  print('');

  // Monster besiegt den Player zum dritten Mal.
  player.takeDamage(player.maxHealth);
  print('Player besiegt');
  print('Verbleibende Leben: ${player.livesRemaining}');
}
