import 'package:flutter/material.dart';

class StartUseCase {
  void navigateTo(BuildContext context, String to) {
    Navigator.pushNamed(context, to);
  }
}