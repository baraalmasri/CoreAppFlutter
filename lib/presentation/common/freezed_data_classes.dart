import 'package:freezed_annotation/freezed_annotation.dart';

//freezed it's a 3 party library for keep the data saved in fields or shown in page
//also like jsonSerializer  command we need to run the same command in terminal here for generate the private variables
// flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs

//part 'freezed_data_classes.freezed.dart'; not part 'freezed_data_classes.g.dart'; like jsonSerializer

part 'freezed_data_classes.freezed.dart';
@freezed
class LoginObjectData with _$LoginObjectData{

  factory LoginObjectData (String userName , String password)=  _LoginObjectData;
}