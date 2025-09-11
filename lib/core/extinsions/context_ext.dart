import 'package:flutter/cupertino.dart';

extension ContextExt on BuildContext{
  double get getWidth => MediaQuery.sizeOf(this).width;
  double get getHeight => MediaQuery.sizeOf(this).height;
}