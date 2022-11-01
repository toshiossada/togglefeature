import 'package:feature_toggle/app/commons/adapters/http_client/http_client_adapter.dart';
import 'package:feature_toggle/app/commons/adapters/http_client/http_response.dart';

class HttpMockAdapter implements IHttpClientAdapter {
  @override
  Future<HttpResponse> delete(String path,
      {Map<String, String>? queryParameters, Map<String, String>? headers}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<HttpResponse> get(String path,
      {Map<String, String>? queryParameters,
      Map<String, String>? headers}) async {
    return HttpResponse(
      statusCode: 200,
      data: '''{
        "data": [
          {"id": "user.btnLoginFacebook", "enabled": true},
          {"id": "user.btnLoginApple", "enabled": true},
          {"id": "user.btnLoginGoogle", "enabled": true},
          {"id": "tecnology.label", "enabled": true},
          {"id": "tecnology.botao1", "enabled": true},
          {"id": "tecnology.botao2", "enabled": true},
          {"id": "tecnology.botao3", "enabled": true},
          {"id": "business.label", "enabled": true},
          {"id": "business.botao1", "enabled": false},
          {"id": "business.botao2", "enabled": true},
          {"id": "business.botao3", "enabled": true}
        ]
      }''',
    );
  }

  @override
  Future<HttpResponse> post(String path,
      {data,
      Map<String, String>? queryParameters,
      Map<String, String>? headers}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<HttpResponse> put(String path,
      {data,
      Map<String, String>? queryParameters,
      Map<String, String>? headers}) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
