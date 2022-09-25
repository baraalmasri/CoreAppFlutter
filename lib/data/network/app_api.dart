import 'package:coreflutterapp/app/constants.dart';
import 'package:coreflutterapp/data/response/responses.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClinet {
  factory AppServiceClinet(Dio dio, {String baseUrl}) = _AppServiceClinet;

  @POST("/customers/login")
  Future<AuthenticationResponse> login(
      @Field("email") String email, @Field("password") String password);
}
