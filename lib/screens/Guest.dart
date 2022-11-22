import 'package:apprentissage/models/UserModel.dart';
import 'package:apprentissage/screens/guest/Auth.dart';
import 'package:apprentissage/screens/guest/Reg.dart';
import 'package:apprentissage/screens/guest/Products.dart';
import 'package:apprentissage/screens/produits/Favorite.dart';
import 'package:apprentissage/screens/produits/Iphone.dart';
import 'package:apprentissage/screens/produits/Mac.dart';
import 'package:apprentissage/screens/services/UserService.dart';
import 'package:flutter/material.dart';

class GuestScreens extends StatefulWidget {
  const GuestScreens({super.key});

  @override
  State<GuestScreens> createState() => _GuestScreensState();
}

class _GuestScreensState extends State<GuestScreens> {
  UserService _userService = UserService();

  List<Widget> _widgets = [];
  int _indexSelected = 0;
  String _email = "";
  String _password = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _widgets.addAll(
      [
        AuthScreen(
          onChangedStep: (index, value) => setState(() {
            _indexSelected = index;
            _email = value;
            _password = "doubletest";

            if (value != "") {
              _userService
                  .auth(UserModel(
                    email: _email,
                    password: _password,
                    uid: '',
                  ))
                  .then(
                    (value) => print(value.toJson()),
                  );

              //print(userModel.toJson());
            }
          }),
        ),
        Register(
          onChangedStep: (index) => setState(() => _indexSelected = index),
        ),
        Products(
          onChangedStep: (index, value) => setState(() {
            if (value == "" && index != 0 && index != 5) {
              _indexSelected = 2;
            } else if (value == "Mac") {
              _indexSelected = 4;
            } else if (value == "Iphone") {
              _indexSelected = 3;
            } else if (index == 0) {
              _indexSelected = 0;
            } else if (value == "fav") {
              _indexSelected = 5;
            } else {
              _indexSelected = 2;
            }
          }),
        ),
        Iphone(
          onChangedStep: (index) => setState(() => _indexSelected = index),
        ),
        Mac(
          onChangedStep: (index) => setState(() => _indexSelected = index),
        ),
        Favorite(
          onChangedStep: (index, value) =>
              setState(() => _indexSelected = index),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _widgets.elementAt(_indexSelected),
    );
  }
}
