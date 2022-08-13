import 'package:flutter/material.dart';

class User {
  final String imagePath;
  final String firstName;
  final String lastName;
  final String email;
  final double balance;
  final String password;

  const User({
    required this.imagePath,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.balance,
    required this.password,
  });
}
