import 'dart:async';

import 'package:coreflutterapp/presentation/base/baseviewmodel.dart';

class LoginViewModel extends BaseViewModel
    with LoginViewModelInputs, LoginViewModelOutputs {
  //pipeline for string type for user name , also .broadcast means ability to multi page or variables to listen or see username controller value
  final StreamController _UserNameStreamController =
      StreamController<String>.broadcast();
  final StreamController _UserPasswordStreamController =
      StreamController<String>.broadcast();

  // inputs ------------------------------------------------
  @override
  void dispose() {
    _UserNameStreamController.close();
    _UserPasswordStreamController.close();
  }

  @override
  void start() {}

  @override
  Sink get inputUserName => _UserNameStreamController.sink;

  @override
  Sink get inputUserPassword => _UserPasswordStreamController.sink;

  @override
  login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  setPassword(String password) {
    inputUserPassword.add(password);
  }

  @override
  setUserName(String userName) {
    inputUserName.add(userName);
  }

  // outputs ------------------------------------------------
  @override
  Stream<bool> get outIsPasswordValid => _UserPasswordStreamController.stream
      .map((password) => _isPasswordValid(password));

  @override
  Stream<bool> get outIsUserNameValid => _UserNameStreamController.stream
      .map((username) => _isUsernameValid(username));

  bool _isPasswordValid(String password) {
    return password.isNotEmpty;
  }

  bool _isUsernameValid(String username) {
    return username.isNotEmpty;
  }
}

abstract class LoginViewModelInputs {
  //there are 3 input in the `login User Interface`
  // text field for username
  setUserName(String userName);

  //text field for password
  setPassword(String password);

  //login button
  login();

  Sink get inputUserName;

  Sink get inputUserPassword;
}

abstract class LoginViewModelOutputs {
  //this for button to disable it when one of the text fields is empty
  Stream<bool> get outIsUserNameValid;

  Stream<bool> get outIsPasswordValid;
}
