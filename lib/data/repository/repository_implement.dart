
import 'package:coreflutterapp/data/data_source/remote_data_source.dart';
import 'package:coreflutterapp/data/mapper/mapper.dart';
import 'package:coreflutterapp/data/network/error_handler.dart';
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
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest) async {

    //it's connected to network ; the phone can able to call API
if (await _networkInfo.isConnected){

  //-applying error handler with repositories
  try{
    final response = await _remoteDataSource.login(loginRequest);
// status ==0 this zero it's our api status ,we can set it as we want from there like 200 ,399 ,00 ...etc
    if(response.status==ApiInternalStatus.SUCCESS){
      //login success ,return the data
      //here return right means return authentication so we have response here
      //but we've made extension to convert response to domain class ,its time to use
      return right(response.toDomain());
    }
    else{
      // here return left ,also return left means failure class that founded in either ,
      //it's mean there is an business error like password wrong or ...etc
      return left(Failure(response.status ?? ApiInternalStatus.FAILURE ,response.message ?? ResponseMessage.DEFAULT));
    }
  }
  catch(error){
    return left(ErrorHandler.handle(error).failure);
  }
}
else {
  // there's no internet connection ,return error connection not found
  //data source here it's a enum with multi error's name , every name has getFailure function that return code and message as Failure object
  return left(DataSource.NO_INTERNET_CONNECTION.getFailure());
}
  }

}