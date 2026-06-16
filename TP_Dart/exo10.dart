import 'dart:io';

void main() {
  int? nombre;

  while (true) {
    print("Entrez un nombre compris entre 10 et 20 :");
    String? input = stdin.readLineSync();
    nombre = int.tryParse(input ?? '');

    if (nombre != null) {
      if (nombre > 20) {
        print("Plus petit !");
      } else if (nombre < 10) {
        print("Plus grand !");
      } else {
        print("Nombre valide saisi : $nombre");
        break;
      }
    } else {
      print("Saisie invalide. Veuillez entrer un entier.");
    }
  }
}
