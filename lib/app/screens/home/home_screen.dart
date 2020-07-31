import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/custom_switch_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page')
      ),
      body: Center(
        child: CustomSwitchWidget(),
      ),
    );
  }
}