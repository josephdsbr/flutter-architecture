import 'package:flutterArchitecture/app/models/api_advisor_model.dart';

abstract class IApiAdvisorRepository {
  Future<ApiAdvisorModel> getWeather();
}