import 'package:flutter/material.dart';

class FruitItem {
  final String fruitName;
  final String fruitPicture;
  final double fruitPrice;
  final String fruitType;

  const FruitItem(
      {required this.fruitName,
      required this.fruitPicture,
      required this.fruitPrice,
      required this.fruitType});
}
