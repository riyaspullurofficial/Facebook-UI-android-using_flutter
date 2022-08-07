import 'package:flutter/material.dart';
import './assets.dart';
import './widgets/avatar.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        avatarLink: dq2,displayStatus: false
      ),
      title: TextField(
        decoration: InputDecoration(
            hintText: "What's on Your Mind?",
            hintStyle: TextStyle(color: Colors.black),
            enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
