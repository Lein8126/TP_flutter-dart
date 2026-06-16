import 'dart:io';

void main() {
  List<double> notes = List.filled(9, 0.0);

  for (int i = 0; i < 9; i++) {
    while (true) {
      print("Entrez la note numéro ${i + 1} :");
      double? note = double.tryParse(stdin.readLineSync() ?? '');
      
      if (note != null) {
        notes[i] = note;
        break;
      } else {
        print("Saisie invalide. Veuillez entrer un nombre.");
      }
    }
  }

  print("Les notes saisies sont : $notes");
}
