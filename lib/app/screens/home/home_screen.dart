import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterArchitecture/app/screens/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/custom_switch_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page')
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_circle),
        onPressed: () {
        controller.getWeather();
      },),
      body: Center(
        child: Column(
          children: <Widget>[
            CustomSwitchWidget(),
            ValueListenableBuilder(valueListenable: controller.weather,
            builder: (context, model, child) {
              if (model?.text == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Text(model.text);
            })
          ],
        ),
      ),
    );
  }
}