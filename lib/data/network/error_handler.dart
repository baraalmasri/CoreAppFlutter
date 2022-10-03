
enum DataSoruce{
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
  NO_INTERNET_CONNECTION
}
class ResponseCode{
  //api /server side status codes
  static const int SUCCESS=200;
  static const int NO_CONTENT=201;
  static const int BAD_REQUEST=400;
  static const int FORBIDDEN=403;
  static const int UNAUTORISED=401;
  static const int NOT_FOUND=404;
  static const int INTERNAL_SERVER_ERROR=500;


  //local status codes
  static const int CONNECT_TIMEOUT=-1;
  static const int CANCEL=-2;
  static const int RECIEVE_TIMEOUT=-3;
  static const int SEND_TIMEOUT=-4;
  static const int CACHE_ERROR=-5;
  static const int NO_INTERNET_CONNECTION=-6;
  static const int unknown=-7;


}