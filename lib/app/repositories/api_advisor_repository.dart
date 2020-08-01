import 'package:flutterArchitecture/app/interfaces/client_http_interface.dart';
import 'package:flutterArchitecture/app/models/api_advisor_model.dart';
import 'package:flutterArchitecture/app/repositories/api_advisor_repository_interface.dart';

class ApiAdvisorRepository implements IApiAdvisorRepository {

  final IClientHttp client;

  ApiAdvisorRepository(this.client);

  @override
  Future<ApiAdvisorModel> getWeather() async {
    var json = await client.get("http://apiadvisor.climatempo.com.br/api/v1/anl/synoptic/locale/BR?token=8ce523bad5695a7e7e980383d1d25e5f");
    return ApiAdvisorModel.fromJson(json[0]);
  }

}