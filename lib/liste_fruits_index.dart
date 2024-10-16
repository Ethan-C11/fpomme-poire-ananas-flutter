class listeFruitsIndex {
  static bool nombrePremier(int nombre) {
    if (nombre == 1 || nombre == 0) {
      return false;
    }
    for (int i = 2; i < nombre - 1; i++) {
      if (nombre % i == 0) {
        return false;
      }
    }
    return true;
  }

  static String choixImageOuTitre(int nombre, bool image) {
    if (image) {
      if (nombre % 2 == 0) {
        return "poire.png";
      }
      if (nombrePremier(nombre)) {
        return "ananas.png";
      }
      return "pomme.png";
    }
    if (nombre % 2 == 0) {
      return "$nombre : Nombre pair";
    }
    if (nombrePremier(nombre)) {
      return "$nombre : Nombre premier";
    }
    return "$nombre : Nombre impair";
  }
}

