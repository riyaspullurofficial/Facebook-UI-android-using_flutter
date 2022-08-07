import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  /* const HeaderButtonSection({Key? key}) : super(key: key);*/

  final Widget buttonOne;
  final Widget  buttonTwo;
  final Widget  buttonThree;

  HeaderButtonSection(
      {required this.buttonOne,
      required this.buttonTwo,
      required this.buttonThree});


  @override
  Widget build(BuildContext context) {
    Widget verticalDevider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticalDevider,
          buttonTwo,
          verticalDevider,
          buttonThree
        ],
      ),
    );
  }
}
