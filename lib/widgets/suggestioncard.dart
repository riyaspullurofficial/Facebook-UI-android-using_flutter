import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  /*const SuggestionCard({Key? key}) : super(key: key);*/
  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;

  SuggestionCard(
      {required this.avatar,
      required this.name,
      required this.mutualFriends,
      required this.addFriend,
      required this.removeFriend});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.grey[300]!, width: 1),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        height: 140,
        /* color: Colors.grey[200],*/
        child: Column(
          children: [
            ListTile(
              title: Text(
                name!=null ? name : " No name",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              subtitle: Text(mutualFriends !=null ? mutualFriends : "0 Mutual Friends"),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                      buttonAction: () {
                        print("Add friend");
                      },
                      buttonIcon: Icons.add_outlined,
                      buttonColor: Colors.blue,
                      buttonTextColor: Colors.white,
                      buttonIconColor: Colors.white,
                      buttonText: "Add Friend"),
                  blankButton(
                      buttonAction: () {
                        print("Button blank remove pressed");
                      },
                      buttonText: "Remove",
                      buttonColor: Colors.grey,
                      buttonTextColor: Colors.black),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget blankButton(
      {required void Function() buttonAction,
      required String buttonText,
      required Color buttonColor,
      required Color buttonTextColor}) {
    return FlatButton(
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      color: buttonColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6))),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return FlatButton.icon(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6))),
      onPressed: () {
        buttonAction();
      },
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      color: buttonColor,
    );
  }

  Widget suggestionImage() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: Image.asset(
            avatar,
            fit: BoxFit.cover,
            height: 250,
          ),
        ));
  }
}
