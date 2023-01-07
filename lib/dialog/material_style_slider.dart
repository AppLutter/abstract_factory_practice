import 'package:abstract_factory_practice/dialog/i_slider.dart';
import 'package:flutter/material.dart';

class MaterialStyleSlider extends ISlider {
  @override
  Widget render({
    required double value,
    required ValueChanged<double> onChanged,
  }) {
    return Slider(value: value, onChanged: onChanged);
  }
}
