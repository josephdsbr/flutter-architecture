import 'package:flutter/cupertino.dart';
import 'package:flutterArchitecture/app/models/api_advisor_model.dart';
import 'package:flutterArchitecture/app/viewmodels/api_advisor_view_model.dart';

class HomeController {
  final ApiAdvisorViewModel apiAdvisorViewModel;
  HomeController(this.apiAdvisorViewModel);

  ValueNotifier<ApiAdvisorModel> get weather => apiAdvisorViewModel.apiAdvisorModel;

  getWeather() {
    apiAdvisorViewModel.fill();
  }
}