import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gardenink/Activity/loginPage.dart';

class Routes{

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case "/login":
        return MaterialPageRoute(builder: (_)=> LoginPage());
      default:
        return _error();
    }

  }

  static Route<dynamic> _error(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        body: Center(
          child: Text("404"),
        ),
      );
    });
  }


}