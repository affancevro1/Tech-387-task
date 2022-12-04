import 'package:doctor_app/models/user.dart';
import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier {
  User _user =
      User(email: "", name: "", id: "", password: "", type: "", token: "");

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    notifyListeners();
  }
}
