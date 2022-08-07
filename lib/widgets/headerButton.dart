
import 'package:flutter/material.dart';

Widget headerButton({
  required String btnText,
  required IconData btnicon,
  required Color iconColor,
  required void Function() buttonAction,
}) {
  return FlatButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      btnicon,
      color: iconColor,
    ),
    label: Text(
      btnText,
      style: TextStyle(color: Colors.black),
    ),
  );
}