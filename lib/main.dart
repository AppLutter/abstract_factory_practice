import 'package:abstract_factory_practice/dialog/cupertino_style_widget.dart';
import 'package:abstract_factory_practice/dialog/i_widget_factory.dart';
import 'package:abstract_factory_practice/dialog/material_style_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox.expand(
        child: Row(
          mainAxisAlignment:  MainAxisAlignment.spaceAround,
          children: <Widget>[
            styleDescriptionWidget(MaterialStyleWidget()),
            styleDescriptionWidget(CupertinoStyleWidget()),
          ],
        ),
      ),
    );
  }


  Widget styleDescriptionWidget(IWidgetFactory iWidgetFactory){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iWidgetFactory.createIndicator().render(),
        SizedBox(height: 50.0),
        iWidgetFactory.createSlider().render(value: 0.5, onChanged: (_){}),
      ],
    );
  }
}
