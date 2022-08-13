import 'package:flutter/material.dart';
import 'package:mydusun_userapp/model/fruitItem.dart';

class FruitItems {
  static const durianSimatupang = FruitItem(
      fruitName: 'Durian Simatupang',
      fruitPicture: 'fruitPicture.jpg',
      fruitPrice: 35,
      fruitType: 'Durian');

  static const List<FruitItem> tempFruitItems = [durianSimatupang];
}
