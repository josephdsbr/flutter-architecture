import 'package:flutterArchitecture/app/interfaces/local_storage_interface.dart';
import 'package:flutterArchitecture/app/models/app_config_model.dart';

class ChangeThemeViewModel {
  final ILocalStorage storage;
  final AppConfigModel config = AppConfigModel();

  ChangeThemeViewModel({this.storage});

  Future init() async {
    storage.get('isDark').then((value){
      if (value) config.themeSwitch.value = value;
    });
  }

  changeTheme(bool value) {
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }
}