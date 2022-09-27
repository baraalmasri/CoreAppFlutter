
import 'package:coreflutterapp/data/network/failure.dart';
import 'package:coreflutterapp/data/network/requests.dart';
import 'package:coreflutterapp/domain/model/models.dart';
import 'package:dartz/dartz.dart';
abstract class  Repository{

  /*
  `Either` it's like if else ,it used like if the request successes so
  return Authentication object ,else if failed so return Failure object or page whatever.
  example: Either<bad,good> , Either<failed,success> ...etc
  */

 Future<Either<Failure,Authentication>> login(LoginRequest loginRequest);
}

