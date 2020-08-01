import 'package:flutterArchitecture/app/interfaces/client_http_interface.dart';
import 'package:flutterArchitecture/app/models/api_advisor_model.dart';
import 'package:flutterArchitecture/app/repositories/api_advisor_repository.dart';
import 'package:flutterArchitecture/app/viewmodels/api_advisor_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class ClientHttpMockito extends Mock implements IClientHttp {}

main() {
  final mock = ClientHttpMockito();
  final viewModel = ApiAdvisorViewModel(
      ApiAdvisorRepository(
          mock
      )
  );

  group("ApiAdvisorViewModel", () {
    test('ApiAdvisorViewModel error', () async {
      when(
          mock.get("http://apiadvisor.climatempo.com.br/api/v1/anl/synoptic/locale/BR?token=8ce523bad5695a7e7e980383d1d25e5f")
      )
      .thenThrow(Exception("error"));

      await viewModel.fill();
      expect(viewModel.apiAdvisorModel.value, null);
    });

    test('ApiAdvisorViewModel success', () async {
      when(
          mock.get("http://apiadvisor.climatempo.com.br/api/v1/anl/synoptic/locale/BR?token=8ce523bad5695a7e7e980383d1d25e5f")
      )
      .thenAnswer((_) => Future.value([ApiAdvisorModel(country: 'BR', date: '2020/05/30', text: 'fdsff').toJson()]));
      await viewModel.fill();
      expect(viewModel.apiAdvisorModel.value, isA<ApiAdvisorModel>());
    });
  });
}