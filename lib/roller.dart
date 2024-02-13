import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller {
  final Random _random = Random();

  int roll() => _random.nextInt(6) + 1;

  Image rollImg() => Image.file(File("assets/images/dice-${roll()}.png"));
}
