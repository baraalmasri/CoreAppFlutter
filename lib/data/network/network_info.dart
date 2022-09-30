import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImplements implements NetworkInfo {
  InternetConnectionChecker _internetConnectionChecker;

  NetworkInfoImplements(this._internetConnectionChecker);

  @override
  Future<bool> get isConnected =>  _internetConnectionChecker.hasConnection;
}
