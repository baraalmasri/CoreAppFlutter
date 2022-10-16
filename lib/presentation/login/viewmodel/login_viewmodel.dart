import 'dart:async';

import 'package:coreflutterapp/presentation/base/baseviewmodel.dart';
import 'package:coreflutterapp/presentation/common/freezed_data_classes.dart';

import '../../../data/network/requests.dart';
import '../../../domain/usecase/login_usecase.dart';

class LoginViewModel extends BaseViewModel
    with LoginViewModelInputs, LoginViewModelOutputs {
  //pipeline for string type for user name , also .broadcast means ability to multi page or variables to listen or see username controller value
  final StreamController _UserNameStreamController =
  StreamController<String>.broadcast();
  final StreamController _UserPasswordStreamController =
  StreamController<String>.broadcast();

  //this variable will hold the last entered data all time ,using the freezed library power of course
  var loginObjectData = LoginObjectData("", "");

  //usecase using
  final LoginUseCase _loginUseCase;

  LoginViewModel(this._loginUseCase);

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
  login() async {
    //we'll use fold function , it's look like Either func, that returns left right  ,left failure , right access
    (await _loginUseCase.execute(
        LoginUseCaseInput(loginObjectData.password, loginObjectData.userName)))
        .fold((failure) => {
          //l , left ,failure here
          print(failure.message)
    }, (data) => {
          //r, right ,success here
          print(data.customer?.name)
    });
  }

  @override
  setPassword(String password) {
    inputUserPassword.add(password);
    //copy with : this method work because we had imported `freezed` library to the loginobjectdata class
    loginObjectData.copyWith(password: password);
  }

  @override
  setUserName(String userName) {
    inputUserName.add(userName);
    loginObjectData.copyWith(userName: userName);
  }

  // outputs ------------------------------------------------
  @override
  Stream<bool> get outIsPasswordValid =>
      _UserPasswordStreamController.stream
          .map((password) => _isPasswordValid(password));

  @override
  Stream<bool> get outIsUserNameValid =>
      _UserNameStreamController.stream
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
