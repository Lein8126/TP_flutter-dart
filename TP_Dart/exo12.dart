import 'dart:io';

void main() {
  print("Entrez un nombre :");
  int? nombre = int.tryParse(stdin.readLineSync() ?? '');

  if (nombre != null) {
    print("Table de multiplication de $nombre :");
    for (int i = 1; i <= 10; i++) {
      print("$nombre × $i = ${nombre * i}");
    }
  } else {
    print("Saisie invalide.");
  }
}
