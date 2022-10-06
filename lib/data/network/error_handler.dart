import 'package:coreflutterapp/data/network/failure.dart';
import 'package:dio/dio.dart';
// here we'll make enum to write one understandable word and return us failure class with its parameters
//that contain code and message response  example : left(DataSource.SUCCESS.getFailure()); that looks like :
// left(Failure(code,message));
// ,left(Failure(501,"some message"));

class ErrorHandler implements Exception{
  late Failure failure;
  //named constructor
  ErrorHandler.handle(dynamic error) {
    //dio error so it's an error from API response or from Dio itself
    if (error is DioError){
      failure = _handleError(error);

      }

    //default error
    else{
      failure = DataSource.DEFAULT.getFailure();
    }
  }
}
Failure _handleError(DioError error) {
  switch(error.type){

    case DioErrorType.connectTimeout:
      return Failure(ResponseCode.CONNECT_TIMEOUT, ResponseMessage.CONNECT_TIMEOUT);

    case DioErrorType.sendTimeout:
      return Failure(ResponseCode.SEND_TIMEOUT, ResponseMessage.SEND_TIMEOUT);

    case DioErrorType.receiveTimeout:
      return Failure(ResponseCode.RECIEVE_TIMEOUT, ResponseMessage.RECIEVE_TIMEOUT);

    case DioErrorType.response:
      //this case if response error was permission error or data error return to us the message and the code that found in the API
      if(error.response !=null && error.response?.statusCode !=null && error.response?.statusMessage != null){
        return Failure(error.response?.statusCode ?? 0, error.response?.statusMessage ?? "");
      }
      else{
        return DataSource.DEFAULT.getFailure();
      }


    case DioErrorType.cancel:
      return Failure(ResponseCode.CANCEL, ResponseMessage.CANCEL);

    case DioErrorType.other:
      return Failure(ResponseCode.DEFAULT, ResponseMessage.DEFAULT);

  }

}

enum DataSource {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.SUCCESS:
        return Failure(ResponseCode.SUCCESS, ResponseMessage.SUCCESS);

      case DataSource.NO_CONTENT:
        return Failure(ResponseCode.NO_CONTENT, ResponseMessage.NO_CONTENT);

      case DataSource.BAD_REQUEST:
        return Failure(ResponseCode.BAD_REQUEST, ResponseMessage.BAD_REQUEST);

      case DataSource.FORBIDDEN:
        return Failure(ResponseCode.FORBIDDEN, ResponseMessage.FORBIDDEN);

      case DataSource.UNAUTORISED:
        return Failure(ResponseCode.UNAUTORISED, ResponseMessage.UNAUTORISED);

      case DataSource.NOT_FOUND:
        return Failure(ResponseCode.NOT_FOUND, ResponseMessage.NOT_FOUND);

      case DataSource.INTERNAL_SERVER_ERROR:
        return Failure(ResponseCode.INTERNAL_SERVER_ERROR,
            ResponseMessage.INTERNAL_SERVER_ERROR);

      case DataSource.CONNECT_TIMEOUT:
        return Failure(
            ResponseCode.CONNECT_TIMEOUT, ResponseMessage.CONNECT_TIMEOUT);

      case DataSource.CANCEL:
        return Failure(ResponseCode.CANCEL, ResponseMessage.CANCEL);

      case DataSource.RECIEVE_TIMEOUT:
        return Failure(
            ResponseCode.RECIEVE_TIMEOUT, ResponseMessage.RECIEVE_TIMEOUT);

      case DataSource.SEND_TIMEOUT:
        return Failure(ResponseCode.SEND_TIMEOUT, ResponseMessage.SEND_TIMEOUT);

      case DataSource.CACHE_ERROR:
        return Failure(ResponseCode.CACHE_ERROR, ResponseMessage.CACHE_ERROR);

      case DataSource.NO_INTERNET_CONNECTION:
        return Failure(ResponseCode.NO_INTERNET_CONNECTION,
            ResponseMessage.NO_INTERNET_CONNECTION);

      case DataSource.DEFAULT:
        return Failure(ResponseCode.DEFAULT,
            ResponseMessage.DEFAULT);

    }
  }
}

class ResponseCode {
  //api /server side status codes
  static const int SUCCESS = 200;
  static const int NO_CONTENT = 201;
  static const int BAD_REQUEST = 400;
  static const int FORBIDDEN = 403;
  static const int UNAUTORISED = 401;
  static const int NOT_FOUND = 404;
  static const int INTERNAL_SERVER_ERROR = 500;

  //local status codes
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

class ResponseMessage {
  //api /server side status message
  static const String SUCCESS = "success";
  static const String NO_CONTENT = "success";
  static const String BAD_REQUEST = "bad request try again later";
  //failure user is not authorised
  static const String FORBIDDEN = "access forbidden ,try again";
  //failure apu rejected request
  static const String UNAUTORISED = "user is unauthorised try later ";
  //failure crach in server side
  static const String INTERNAL_SERVER_ERROR =
      "something went wrong,try again later";
  static const String NOT_FOUND = "this page not found try again later ";
  //local status message
  static const String CONNECT_TIMEOUT = "time out error,try again later";
  static const String CANCEL = "request was cancelled try again later ";
  static const String RECIEVE_TIMEOUT = "time out error try later ";
  static const String SEND_TIMEOUT = "timeout error try again later";
  static const String CACHE_ERROR = "cache error mtry again later";
  static const String NO_INTERNET_CONNECTION =
      "please check your internet connection";
  static const String DEFAULT = "something went wrong try again later ";
}
