import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController{
  int csillagokDbSzam=3;

  void noveldCsillagDbt() {
    if (csillagokDbSzam < 5) {
      csillagokDbSzam++;
      update();
    }
  }
    void csokkentsdCsillagDbt() {
    if (csillagokDbSzam > 0) {
      csillagokDbSzam--;
      update();
    }
  }

  List<Icon> getStars() {
    List<Icon> temp = [];
    for(int i = 0; i < 5; i++) {
      temp.add(
        Icon((i < csillagokDbSzam ? Icons.star : Icons.star_border),color: Colors.amber),
      );
    }
    return temp;
  }

}