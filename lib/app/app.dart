import 'package:coreflutterapp/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
  //this is default constructor
  //const MyApp({Key? key}) : super(key: key);

  //this is named constructor for using it as singleton instance
  MyApp._internal();
  static final MyApp _singletonInstance =MyApp._internal();

  //here it's like going to factory and ask him I need instance from this class so
  //it will return to me that singleton class every singletime when I call MyApp class
  factory MyApp ()=> _singletonInstance;


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme (),

    );
  }
}
