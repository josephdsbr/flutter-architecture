import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterArchitecture/app/app_widget.dart';
import 'package:flutterArchitecture/app/interfaces/client_http_interface.dart';
import 'package:flutterArchitecture/app/repositories/api_advisor_repository.dart';
import 'package:flutterArchitecture/app/repositories/api_advisor_repository_interface.dart';
import 'package:flutterArchitecture/app/screens/home/home_controller.dart';
import 'package:flutterArchitecture/app/services/client_http_service.dart';
import 'package:flutterArchitecture/app/viewmodels/api_advisor_view_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => HomeController(i.get())),
    Bind((i) => ApiAdvisorViewModel(i.get())),
    Bind<IApiAdvisorRepository>((i) => ApiAdvisorRepository(i.get())),
    Bind<IClientHttp>((i) => ClientHttpService()),
  ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => null;

}