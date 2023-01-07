import 'package:abstract_factory_practice/dialog/i_slider.dart';
import 'package:flutter/cupertino.dart';

class CupertinoStyleSlider extends ISlider {
  @override
  Widget render({required double value, required ValueChanged<double> onChanged}) {
    return CupertinoSlider(value: value, onChanged: onChanged);
  }
}
