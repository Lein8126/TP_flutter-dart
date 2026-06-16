# TP d'Algorithmique – Licence 2

Ce dépôt contient les solutions pour les 5 exercices obligatoires.

## Exercice 5 : Impôt des habitants de Zorglub

**Analyse du problème :**
L'algorithme doit déterminer si un habitant est imposable selon son âge et son sexe.
- Sexe M (Homme) et Âge > 20 => Imposable.
- Sexe F (Femme) et Âge entre 18 et 35 inclus => Imposable.
- Autres cas => Non imposable.

**Algorithme en pseudo-code :**
```text
ALGORITHME ImpotZorglub
VARIABLES
    age : ENTIER
    sexe : CARACTERE
DEBUT
    AFFICHER "Entrez l'âge de l'habitant :"
    LIRE age
    AFFICHER "Entrez le sexe de l'habitant (M/F) :"
    LIRE sexe
    
    SI (sexe = 'M' ET age > 20) OU (sexe = 'F' ET age >= 18 ET age <= 35) ALORS
        AFFICHER "L'habitant est imposable."
    SINON
        AFFICHER "L'habitant n'est pas imposable."
    FIN SI
FIN
```

---

## Exercice 10 : Contrôle de saisie

**Analyse du problème :**
Il faut utiliser une boucle qui redemande une saisie tant que le nombre donné n'est pas dans l'intervalle [10, 20]. On doit afficher des indications ("Plus grand !", "Plus petit !") pour guider l'utilisateur.

**Algorithme en pseudo-code :**
```text
ALGORITHME ControleSaisie
VARIABLES
    nombre : ENTIER
DEBUT
    nombre <- 0
    TANT QUE nombre < 10 OU nombre > 20 FAIRE
        AFFICHER "Entrez un nombre compris entre 10 et 20 :"
        LIRE nombre
        SI nombre > 20 ALORS
            AFFICHER "Plus petit !"
        SINON SI nombre < 10 ALORS
            AFFICHER "Plus grand !"
        FIN SI
    FIN TANT QUE
    AFFICHER "Nombre valide saisi."
FIN
```

---

## Exercice 12 : Table de multiplication

**Analyse du problème :**
À partir d'un nombre donné par l'utilisateur, on utilise une boucle `POUR` de 1 à 10 pour afficher les résultats successifs des multiplications.

**Algorithme en pseudo-code :**
```text
ALGORITHME TableMultiplication
VARIABLES
    nombre, i : ENTIER
DEBUT
    AFFICHER "Entrez un nombre :"
    LIRE nombre
    AFFICHER "Table de multiplication :"
    POUR i ALLANT DE 1 A 10 FAIRE
        AFFICHER nombre, " × ", i, " = ", nombre * i
    FIN POUR
FIN
```

---

## Exercice 14 : Factorielle

**Analyse du problème :**
Le calcul de la factorielle (N!) nécessite d'accumuler le produit des nombres de 1 à N dans une variable d'accumulation initialisée à 1.

**Algorithme en pseudo-code :**
```text
ALGORITHME Factorielle
VARIABLES
    nombre, i, fact : ENTIER
DEBUT
    AFFICHER "Entrez un nombre :"
    LIRE nombre
    fact <- 1
    POUR i ALLANT DE 1 A nombre FAIRE
        fact <- fact * i
    FIN POUR
    AFFICHER nombre, "! = ", fact
FIN
```

---

## Exercice 20 : Tableau de notes

**Analyse du problème :**
On doit déclarer un tableau de 9 réels (notes). On parcourt ce tableau à l'aide d'une boucle `POUR` afin de permettre à l'utilisateur d'y insérer une valeur à chaque indice.

**Algorithme en pseudo-code :**
```text
ALGORITHME TableauNotes
VARIABLES
    notes : TABLEAU[1..9] DE REELS
    i : ENTIER
DEBUT
    POUR i ALLANT DE 1 A 9 FAIRE
        AFFICHER "Entrez la note numéro ", i, " :"
        LIRE notes[i]
    FIN POUR
    AFFICHER "Les notes saisies sont : ", notes
FIN
```
