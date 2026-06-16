enum Direction { nord, est, sud, ouest }

class Robot {
  int x;
  int y;
  Direction direction;

  Robot(this.x, this.y, this.direction);

  // 🔄 Rotation à droite
  void tournerDroite() {
    direction = Direction.values[(direction.index + 1) % 4];
  }

  // 🔄 Rotation à gauche
  void tournerGauche() {
    direction = Direction.values[(direction.index + 3) % 4];
  }

  // 🚶 Avancer selon la direction actuelle
  void avancer() {
    switch (direction) {
      case Direction.nord:
        y++;
        break;
      case Direction.est:
        x++;
        break;
      case Direction.sud:
        y--;
        break;
      case Direction.ouest:
        x--;
        break;
    }
  }

  // 🧠 Interprète une suite d'instructions
  void executerInstructions(String instructions) {
    for (var action in instructions.split('')) {
      switch (action) {
        case 'A':
          avancer();
          break;
        case 'D':
          tournerDroite();
          break;
        case 'G':
          tournerGauche();
          break;
        default:
          print("Instruction inconnue : $action");
      }
    }
  }

  // 🎯 Nom lisible de la direction
  String get directionLisible {
    return direction.name;
  }

  // 📍 Affichage stylé
  String positionDetaillee() {
    return "Position ($x, $y) orienté vers $directionLisible";
  }
}

void testerScenario(String titre, Robot robot, String instructions) {
  print("🔹 $titre");
  print("   Départ : ${robot.positionDetaillee()}");
  print("   Instructions : $instructions");

  robot.executerInstructions(instructions);

  print("   Résultat : ${robot.positionDetaillee()}");
  print("");
}

void main() {
  print("🤖 SIMULATEUR DE ROBOT\n");

  // 🏁 Création des robots
  var robot1 = Robot(0, 0, Direction.nord);
  var robot2 = Robot(0, -1, Direction.nord);

  print("📍 Robots initialisés :");
  print("   Robot1 → ${robot1.positionDetaillee()}");
  print("   Robot2 → ${robot2.positionDetaillee()}\n");

  // 🔄 Changement d’orientation
  robot1.direction = Direction.est;
  robot2.direction = Direction.est;

  print("➡️ Orientation vers l'est :");
  print("   Robot1 → ${robot1.positionDetaillee()}");
  print("   Robot2 → ${robot2.positionDetaillee()}");

  robot1.direction = Direction.ouest;
  robot2.direction = Direction.ouest;

  print("⬅️ Orientation vers l'ouest :");
  print("   Robot1 → ${robot1.positionDetaillee()}");
  print("   Robot2 → ${robot2.positionDetaillee()}\n");

  // 🧪 Tests demandés
  testerScenario(
    "Test 1",
    Robot(7, 3, Direction.nord),
    "DAAGAG",
  );

  testerScenario(
    "Test 2",
    Robot(2, -7, Direction.ouest),
    "DDAAAAAGA",
  );

  testerScenario(
    "Test 3",
    Robot(8, 4, Direction.sud),
    "GAAADDDAGGGG",
  );
}