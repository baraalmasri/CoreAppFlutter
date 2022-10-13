
import 'package:coreflutterapp/presentation/resources/language_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String languageKey="languageKey";
class AppPreferences{
  final SharedPreferences _sharedPreferences;
  AppPreferences(this._sharedPreferences);
  Future<String> getAppLanguage() async{
    String? language = _sharedPreferences.getString(languageKey);
    // if the user set new language then return his wanted language
    if(language!=null && language.isNotEmpty){
      return language;

    }//if not so return the default language
    else{
      return LanguageType.ENGLISH.getValue();
    }

  }
}