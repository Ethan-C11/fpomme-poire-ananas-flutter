import 'package:flutter/material.dart';


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

  static Color itemColorPicker(int value) {
    if (value % 2 == 0) {
      return Color.fromARGB(150, 150, 20, 20); // pair
    } else {
      return Color.fromARGB(150, 40, 150, 40); // impair
    }
  }

  static Color buttonColorPicker(int value) {
    if (value == 0) {
      return Color.fromARGB(255, 0, 0, 0);
    } else {
      return Color.fromARGB(120, 0, 0, 190);
    }
  }
}

