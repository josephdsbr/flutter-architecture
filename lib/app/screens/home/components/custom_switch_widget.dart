import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///E:/www/flutter/flutterArchitecture/lib/app/app_controller.dart';

class CustomSwitchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(value: AppController.instance.isDark, onChanged: (value) {
      AppController.instance.changeThemeViewModel.changeTheme(value);
    });
  }
}