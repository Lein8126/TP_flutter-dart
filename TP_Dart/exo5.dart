import 'dart:io';

void main() {
  print("Entrez l'âge de l'habitant :");
  int? age = int.tryParse(stdin.readLineSync() ?? '');

  print("Entrez le sexe de l'habitant (M/F) :");
  String? sexe = stdin.readLineSync()?.toUpperCase();

  if (age != null && sexe != null) {
    if ((sexe == 'M' && age > 20) || (sexe == 'F' && age >= 18 && age <= 35)) {
      print("L'habitant est imposable.");
    } else {
      print("L'habitant n'est pas imposable.");
    }
  } else {
    print("Saisie invalide.");
  }
}
