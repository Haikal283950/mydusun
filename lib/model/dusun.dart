import 'package:flutter/material.dart';
import 'package:mydusun_userapp/model/fruitItem.dart';

class Dusun {
  final String dusunName;
  final String dusunCoordinates;
  final int dusunOrders;
  final String dusunCategory;
  final String dusunImage;
  final List<FruitItem> stockFruits;

  const Dusun(
      {required this.dusunCategory,
      required this.dusunCoordinates,
      required this.dusunName,
      required this.dusunOrders,
      required this.dusunImage,
      required this.stockFruits});
}
