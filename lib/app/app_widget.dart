import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterArchitecture/app/app_controller.dart';
import 'package:flutterArchitecture/app/screens/home/home_screen.dart';

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.theme,
      builder: (context, isDark, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            brightness: isDark ? Brightness.dark : Brightness.light,
          ),
          home: HomeScreen(),
        );
    },);
  }
}