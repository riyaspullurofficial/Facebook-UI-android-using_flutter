import 'package:flutter/material.dart';
import '../assets.dart';

class Avatar extends StatelessWidget {
/*  const Avatar({Key? key}) : super(key: key);*/

  final String avatarLink;
  final bool displayStatus;
  final bool displayBorder;
  final double width;
  final double height;

  Avatar({
    required this.avatarLink,
    required this.displayStatus,
    this.displayBorder=false,
    this.width=50,
    this.height=50
  });

  @override
  Widget build(BuildContext context) {
    /* Widget statusIndicator;
    if(displayStatus){
      statusIndicator =
          Positioned(
            bottom: 0,
            right: 1,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
            ),
          );

    } else{
      statusIndicator = SizedBox();
    }*/

    return Container(
      padding: EdgeInsets.only(right: 2, left: 2),
      child: Stack(
        children: [
          Container(

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: displayBorder ?
              Border.all(
                color: Colors.blueAccent,
                width: 3,
              )
                  :
                  Border()
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                avatarLink,
                width: width,
                height: height,
              ),
            ),
          ),

          /*statusIndicator,*/
          displayStatus
              ? Positioned(
                  bottom: 0,
                  right: 1,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
