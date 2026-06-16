import 'dart:io';

void main() {
  print("Entrez un nombre pour calculer sa factorielle :");
  int? nombre = int.tryParse(stdin.readLineSync() ?? '');

  if (nombre != null && nombre >= 0) {
    BigInt fact = BigInt.from(1);
    for (int i = 1; i <= nombre; i++) {
      fact = fact * BigInt.from(i);
    }
    print("$nombre! = $fact");
  } else {
    print("Saisie invalide (assurez-vous d'entrer un entier positif ou nul).");
  }
}
