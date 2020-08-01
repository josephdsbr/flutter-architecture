import 'package:flutter/cupertino.dart';
import 'package:flutterArchitecture/app/models/api_advisor_model.dart';
import 'package:flutterArchitecture/app/repositories/api_advisor_repository_interface.dart';

class ApiAdvisorViewModel {
  final IApiAdvisorRepository iApiAdvisorRepository;
  final apiAdvisorModel = ValueNotifier<ApiAdvisorModel>(null);

  ApiAdvisorViewModel(this.iApiAdvisorRepository);

  fill() async {
    apiAdvisorModel.value = await iApiAdvisorRepository.getWeather();
  }
}