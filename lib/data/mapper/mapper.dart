import 'package:coreflutterapp/app/constants.dart';
import 'package:coreflutterapp/app/extensions.dart';
import 'package:coreflutterapp/data/response/responses.dart';
import 'package:coreflutterapp/domain/model/models.dart';

// mapper : it's an extension but not for primitive variables (int ,String,..etc) but for variables of custom type (classes ..our own new type variable)
//it's work like the same shape of extensions , for making check up on that variable or to change that variable after getting its data
//mapper simplify is class converter from type to other type .  here I'm convert the ClassResponses to normal class
extension CustomerREsponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(
        this?.id.orEmpty() ?? Constants.empty,
        this?.name.orEmpty() ?? Constants.empty,
        this?.numOfNotifications.orZero() ?? Constants.zero);
  }
}

extension ContactsREsponseMapper on ContactsResponse? {
  Contacts toDomain() {
    return Contacts(
        this?.phone.orEmpty() ?? Constants.empty,
        this?.email.orEmpty() ?? Constants.empty,
        this?.link.orEmpty() ?? Constants.empty);
  }
}

extension AuthenticationREsponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(
        this?.customer.toDomain(),
        this?.contacts.toDomain());
  }
}
