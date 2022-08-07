import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circularbtn.dart';
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class StoryCard extends StatelessWidget {
/*  const StoryCard({Key? key}) : super(key: key);*/

  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBoarder;

  StoryCard({required this.labelText,
              required this.story,
              required this.avatar,
              this.createStoryStatus = false,
    this.displayBoarder=false,
              });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            story
          ),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
              top: 5,
              child:
              createStoryStatus ?
              CircularBtn(
                buttonIcon: Icons.add,
                iconColor: Colors.lightBlue,
                buttonAction: (){
                  print("Create new story");
                },

              )
                  :
                  Avatar(avatarLink: avatar,
                    displayStatus: false,
                    displayBorder: displayBoarder,
                  width: 35,height: 35,),
              

          ),
          Positioned(
            bottom: 10,
              left: 10,
              child: Text(
                labelText !=null ? labelText : "n/a",
              style:TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ) ,)
          )
        ],

      ),
    );
  }
}
