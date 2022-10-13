import 'package:coreflutterapp/app/app_preferences.dart';
import 'package:coreflutterapp/app/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "authorization";
const String DEFAULT_LANGUAGE = "language";

class DioFactory {
  //app preferences for getting the language and with the language we can call API in that language
  final AppPreferences _appPreferences;
  DioFactory(this._appPreferences);



  Future<Dio> getDio() async {
    //get the language if the user set new language ,if not so get the data with default language
    String language =await _appPreferences.getAppLanguage();

    Dio dio = Dio();
    int _timeout = Constants.apiTimeOut; //1 minute

    Map<String, String> headers = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
      AUTHORIZATION: Constants.token,
      DEFAULT_LANGUAGE: language// will be changed as the device language`s is
    };
    dio.options = BaseOptions(
        baseUrl: Constants.baseUrl,
        headers: headers,
        receiveTimeout: _timeout,
        sendTimeout: _timeout);

    //this kReleaseMode function to check the app if it's in release mode or debug mode
    //so here we saying if the app not in release mode so show me the logs of API and errors and response ..etc
    if (!kReleaseMode){
      //we'll use this `PrettyDioLogger` library to show us the logs to handle API responses
      //as default there're some parameters set as false so I need from logger to show it to me too
      dio.interceptors.add(PrettyDioLogger(
        request: true,
        requestBody: true,
        responseHeader: true
      ));
    }

    return dio;
  }
}
