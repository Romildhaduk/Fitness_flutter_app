import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/screens/intro_screen2/model.dart';

class CustomRadio extends StatelessWidget {
  Gender _gender;

  CustomRadio(this._gender);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.none,
      elevation: 0,
      color: _gender.isSelected ? Color(0xFF3B4257) : Colors.white,
      child: Center(
        child: Text(
          _gender.name,
          style:
              TextStyle(color: _gender.isSelected ? Colors.white : Colors.grey),
        ),
      ),
    );
  }
}
