import 'package:flutter/material.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String imgAvatar;
  final String birtDate;

  const UserModel({super.key, 
    required this.name,
    required this.imgAvatar,
    required this.birtDate,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return name != oldWidget.name ||
        imgAvatar != oldWidget.imgAvatar ||
        birtDate != oldWidget.birtDate;
  }

  static UserModel of(BuildContext context){
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();  
    assert(userModel != null, 'UserModel not exists in BuildContext');
    return userModel!;
  }
}
