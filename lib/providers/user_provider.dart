import 'package:flutter/material.dart';


class UserProvider extends ChangeNotifier{
  String userName;

  UserProvider({
    this.userName = "CamCoder337"
  });

  void changeUserName({
    required String newUserName,
  })async{
    this.userName = newUserName;
    notifyListeners();
  }
}
