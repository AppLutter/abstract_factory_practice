import 'package:abstract_factory_practice/dialog/i_indicator.dart';
import 'package:abstract_factory_practice/dialog/i_slider.dart';

abstract class IWidgetFactory{
  IIndicator createIndicator();
  ISlider createSlider();
}