

import 'package:coreflutterapp/data/network/app_api.dart';
import 'package:coreflutterapp/data/network/requests.dart';
import 'package:coreflutterapp/data/response/responses.dart';

abstract class RemoteDataSource{
  Future<AuthenticationResponse> login(LoginRequest loginRequest);
}
//-----------------------------------------------------------------

 class RemoteDataSourceImplements implements RemoteDataSource{
  final AppServiceClient _appServiceClient;
  RemoteDataSourceImplements(this._appServiceClient);

  @override
  Future<AuthenticationResponse> login(LoginRequest loginRequest) async {
 return await _appServiceClient.login(loginRequest.email, loginRequest.password);

  }
}