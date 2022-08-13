import 'package:flutter/material.dart';
import 'package:mydusun_userapp/model/dusun.dart';
import 'package:mydusun_userapp/model/fruitItem.dart';
import 'package:mydusun_userapp/tempFile/fruitItems.dart';

class DusunList {
  static const dusunAsep = Dusun(
      dusunCategory: 'High ranked',
      dusunCoordinates: 'null for now',
      dusunName: 'Dusun Pak Asep',
      dusunOrders: 195,
      dusunImage: 'assets/images/dusunImages/asepDusun.PNG',
      stockFruits: FruitItems.tempFruitItems);
  static const dusunShakira = Dusun(
      dusunCategory: 'High ranked',
      dusunCoordinates: 'null for now',
      dusunName: 'Udin zGerr',
      dusunOrders: 140,
      dusunImage: 'assets/images/dusunImages/udinDusun.PNG',
      stockFruits: FruitItems.tempFruitItems);
  static const dusunUdin = Dusun(
      dusunCategory: 'High ranked',
      dusunCoordinates: 'null for now',
      dusunName: "Shakira's fresh house!",
      dusunOrders: 112,
      dusunImage: 'assets/images/dusunImages/shakiraDusun.PNG',
      stockFruits: FruitItems.tempFruitItems);
}
