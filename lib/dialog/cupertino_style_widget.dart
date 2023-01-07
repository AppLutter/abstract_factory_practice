import 'package:abstract_factory_practice/dialog/cupertino_style_indicator.dart';
import 'package:abstract_factory_practice/dialog/cupertino_style_slider.dart';
import 'package:abstract_factory_practice/dialog/i_widget_factory.dart';
import 'package:abstract_factory_practice/dialog/i_indicator.dart';
import 'package:abstract_factory_practice/dialog/i_slider.dart';

class CupertinoStyleWidget extends IWidgetFactory{
  @override
  IIndicator createIndicator() {
    return CupertinoStyleIndicator();
  }

  @override
  ISlider createSlider() {
    return CupertinoStyleSlider();
  }

}