import 'package:abstract_factory_practice/dialog/i_widget_factory.dart';
import 'package:abstract_factory_practice/dialog/i_indicator.dart';
import 'package:abstract_factory_practice/dialog/i_slider.dart';
import 'package:abstract_factory_practice/dialog/material_style_indicator.dart';
import 'package:abstract_factory_practice/dialog/material_style_slider.dart';

class MaterialStyleWidget extends IWidgetFactory{
  @override
  IIndicator createIndicator() {
    return MaterialStyleIndicator();
  }

  @override
  ISlider createSlider() {
    return MaterialStyleSlider();
  }

}