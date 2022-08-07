import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';
import '../assets.dart';
class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomBtn(),
          Avatar(avatarLink: dq1,displayStatus: true),
          Avatar(avatarLink: dq2,displayStatus: true),
          Avatar(avatarLink: dq3,displayStatus: true),
          Avatar(avatarLink: dq1,displayStatus: true),
          Avatar(avatarLink: dq2,displayStatus: true),
          Avatar(avatarLink: dq3,displayStatus: true),
          Avatar(avatarLink: dq1,displayStatus: true),
          Avatar(avatarLink: dq2,displayStatus: true),
          Avatar(avatarLink: dq3,displayStatus: true),



        ],
      ),

    );
  }



  Widget createRoomBtn(){
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5),
        child:OutlinedButton.icon(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side:  BorderSide(
                        width:5,
                        color: Colors.lightBlue
                    )

                ),
              ),
            ),
            onPressed: (){},
            icon: Icon(
              Icons.video_call,
              color: Colors.deepPurple,
            ),
            label: Text(
              "Create \nRoom",
              style: TextStyle(
                  color: Colors.lightBlue
              ),
            )
        )
    );
  }

}
