import 'package:flutter/cupertino.dart';
import 'package:flutterArchitecture/app/services/shared_local_storage_service.dart';
import 'package:flutterArchitecture/app/viewmodels/change_theme_view_model.dart';

class AppController {
  static final AppController instance = AppController._();

  AppController._() {
    changeThemeViewModel.init();
  }

  final ChangeThemeViewModel changeThemeViewModel = ChangeThemeViewModel(storage: SharedLocalStorageService());

  bool get isDark => changeThemeViewModel.config.themeSwitch.value;
  ValueNotifier<bool> get theme => changeThemeViewModel.config.themeSwitch;
}