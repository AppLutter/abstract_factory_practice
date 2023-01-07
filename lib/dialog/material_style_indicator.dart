import 'package:abstract_factory_practice/dialog/i_indicator.dart';
import 'package:flutter/material.dart';

class MaterialStyleIndicator extends IIndicator{
  @override
  Widget render() {
    return CircularProgressIndicator();
  }

}