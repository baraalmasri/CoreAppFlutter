import 'package:coreflutterapp/data/network/failure.dart';
import 'package:coreflutterapp/domain/model/models.dart';
import 'package:coreflutterapp/domain/repository/repository.dart';
import 'package:coreflutterapp/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:coreflutterapp/data/network/requests.dart';

class LoginUseCase implements BaseUseCase <LoginUseCaseInput,Authentication>{
  final Repository _repository;
  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, Authentication>> execute(LoginUseCaseInput input) async {

 return await _repository.login(LoginRequest(input.email,input.password));
  }

}

class LoginUseCaseInput {
  String email;
  String password;
  LoginUseCaseInput(this.password,this.email);
}