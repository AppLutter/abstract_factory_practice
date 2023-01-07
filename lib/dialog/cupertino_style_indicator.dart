import 'package:abstract_factory_practice/dialog/i_indicator.dart';
import 'package:flutter/cupertino.dart';

class CupertinoStyleIndicator extends IIndicator {
  @override
  Widget render() {
    return CupertinoActivityIndicator();
  }
}
