import 'dart:ffi';

import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/storysection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postcard.dart';
import 'package:flutter/material.dart';
import './widgets/circularbtn.dart';
import './statussection.dart';
import 'assets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget deviderThicked({required double? thickness}){
    return  Divider(
      thickness: thickness,
      color: Colors.grey[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          actions: [
            CircularBtn(
                buttonAction: () {
                  print("Print button search clicked");
                },
                buttonIcon: Icons.search
            ),
            CircularBtn(
                buttonAction: () {
                  print("Print button messenger clicked");
                },
                buttonIcon: Icons.chat,

            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            deviderThicked(thickness: 1),
            HeaderButtonSection(
              buttonOne:headerButton(
                  btnText: "Live",
                  btnicon: Icons.video_call,
                  iconColor: Colors.red,
                  buttonAction: (){
                    print("Go Live...!!");
                  }) ,
              buttonTwo: headerButton(
                  btnText: "Photo",
                  btnicon: Icons.photo_library,
                  iconColor: Colors.green,
                  buttonAction: ()=>{
                  print("Go photo gallery...!!")
                  }
              ),
              buttonThree: headerButton(
                  btnText: "Room",
                  btnicon: Icons.video_call,
                  iconColor: Colors.deepPurple,
                  buttonAction: (){
                    print("Go Room...!!");
                  }
              ),
            ),
            deviderThicked(thickness: 10),
            RoomSection(),
            deviderThicked(thickness: 10),
            StorySection(),
            deviderThicked(thickness: 10),
            PostCard(
              avatar: dq2 ,
              name: "Dulqar Salman",
              publishedAt: "5h",
              postImage: post4,
              postTitle: "Happy Diwali",
              bluetickFlag: true,
              likeNumber: "10K",
              commentNumber: "1K",
              sharesNumber: "1.5K",
            ),
            deviderThicked(thickness: 10),
            PostCard(
              avatar: dq3 ,
              name: "Dulqar Fans",
              publishedAt: "4h",
              postImage: post2,
              postTitle: "Chunk bros happy",
              bluetickFlag: false,
              likeNumber: "15K",
              commentNumber: "1.5K",
              sharesNumber: "5K",
            ),
            deviderThicked(thickness: 10),
            SuggestionSection(),
            deviderThicked(thickness: 10),
            PostCard(
              avatar: dq2 ,
              name: "Dulqar Salman",
              publishedAt: "5h",
              postImage: post4,
              postTitle: "Happy Diwali",
              bluetickFlag: true,
              likeNumber: "10K",
              commentNumber: "1K",
              sharesNumber: "1.5K",
            ),
            deviderThicked(thickness: 10),
            PostCard(
              avatar: dq3 ,
              name: "Dulqar Fans",
              publishedAt: "4h",
              postImage: post2,
              postTitle: "Chunk bros happy",
              bluetickFlag: false,
              likeNumber: "15K",
              commentNumber: "1.5K",
              sharesNumber: "5K",
            ),
            deviderThicked(thickness: 10),
            PostCard(
              avatar: dq2 ,
              name: "Dulqar Salman",
              publishedAt: "5h",
              postImage: post4,
              postTitle: "Happy Diwali",
              bluetickFlag: true,
              likeNumber: "10K",
              commentNumber: "1K",
              sharesNumber: "1.5K",
            ),
            deviderThicked(thickness: 10),
            SuggestionSection(),
            deviderThicked(thickness: 10),
            PostCard(
              avatar: dq3 ,
              name: "Dulqar Fans",
              publishedAt: "4h",
              postImage: post2,
              postTitle: "Chunk bros happy",
              bluetickFlag: false,
              likeNumber: "15K",
              commentNumber: "1.5K",
              sharesNumber: "5K",
            ),
            deviderThicked(thickness: 10),
            PostCard(
              avatar: dq2 ,
              name: "Dulqar Salman",
              publishedAt: "5h",
              postImage: post4,
              postTitle: "Happy Diwali",
              bluetickFlag: true,
              likeNumber: "10K",
              commentNumber: "1K",
              sharesNumber: "1.5K",
            ),
            deviderThicked(thickness: 10),
            PostCard(
              avatar: dq3 ,
              name: "Dulqar Fans",
              publishedAt: "4h",
              postImage: post2,
              postTitle: "Chunk bros happy",
              bluetickFlag: false,
              likeNumber: "15K",
              commentNumber: "1.5K",
              sharesNumber: "5K",
            ),
            deviderThicked(thickness: 10),
            PostCard(
              avatar: dq2 ,
              name: "Dulqar Salman",
              publishedAt: "5h",
              postImage: post4,
              postTitle: "Happy Diwali",
              bluetickFlag: true,
              likeNumber: "10K",
              commentNumber: "1K",
              sharesNumber: "1.5K",
            ),
            deviderThicked(thickness: 10),
            PostCard(
              avatar: dq3 ,
              name: "Dulqar Fans",
              publishedAt: "4h",
              postImage: post2,
              postTitle: "Chunk bros happy",
              bluetickFlag: false,
              likeNumber: "15K",
              commentNumber: "1.5K",
              sharesNumber: "5K",
            ),
            deviderThicked(thickness: 10),
            SuggestionSection(),
            deviderThicked(thickness: 10),
            PostCard(
              avatar: dq2 ,
              name: "Dulqar Salman",
              publishedAt: "5h",
              postImage: post4,
              postTitle: "Happy Diwali",
              bluetickFlag: true,
              likeNumber: "10K",
              commentNumber: "1K",
              sharesNumber: "1.5K",
            ),
            deviderThicked(thickness: 10),
            PostCard(
              avatar: dq3 ,
              name: "Dulqar Fans",
              publishedAt: "4h",
              postImage: post2,
              postTitle: "Chunk bros happy",
              bluetickFlag: false,
              likeNumber: "15K",
              commentNumber: "1.5K",
              sharesNumber: "5K",
            ),
            deviderThicked(thickness: 10),PostCard(
              avatar: dq2 ,
              name: "Dulqar Salman",
              publishedAt: "5h",
              postImage: post4,
              postTitle: "Happy Diwali",
              bluetickFlag: true,
              likeNumber: "10K",
              commentNumber: "1K",
              sharesNumber: "1.5K",
            ),
            deviderThicked(thickness: 10),
            PostCard(
              avatar: dq3 ,
              name: "Dulqar Fans",
              publishedAt: "4h",
              postImage: post4,
              postTitle: "",
              bluetickFlag: false,
              likeNumber: "15K",
              commentNumber: "1.5K",
              sharesNumber: "5K",
            ),
            deviderThicked(thickness: 10),



          ],
        ),
      ),
    );
  }
}
