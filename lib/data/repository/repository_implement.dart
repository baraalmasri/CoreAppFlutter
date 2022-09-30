
import 'package:coreflutterapp/data/data_source/remote_data_source.dart';
import 'package:coreflutterapp/data/network/failure.dart';
import 'package:coreflutterapp/data/network/network_info.dart';
import 'package:coreflutterapp/data/network/requests.dart';
import 'package:coreflutterapp/domain/model/models.dart';
import 'package:coreflutterapp/domain/repository/repository.dart';
import 'package:dartz/dartz.dart';

class RepositoryImplement implements Repository{
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;
  RepositoryImplement(this._networkInfo,this._remoteDataSource);

  @override
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest) {

    throw UnimplementedError();
  }

}