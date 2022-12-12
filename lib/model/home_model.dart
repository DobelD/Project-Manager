import 'package:flutter/material.dart';

class Dashboard {
  IconData? icon;
  String? total;
  String? status;
  String? color;

  Dashboard({required this.icon, this.total, this.status, this.color});
}

class GradientColor {
  String? colorOpacity;
  String? color;

  GradientColor({required this.colorOpacity, this.color});
}
