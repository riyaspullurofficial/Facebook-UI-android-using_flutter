import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/bluetick.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
/*  const PostCard({Key? key}) : super(key: key);*/

  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool bluetickFlag;
  final String likeNumber;
  final String commentNumber;
  final String sharesNumber;

  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postImage,
    required this.postTitle,
    this.bluetickFlag= false,
    required this.likeNumber,
    required this.commentNumber,
    required this.sharesNumber
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
        child: Column(
      children: [
        listTilePostCardHeader(),
        titleSection(),
        imageSection(),
        footerSection(),
        Divider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        HeaderButtonSection(
          buttonOne: headerButton(
              btnText: "Like",
              btnicon: Icons.thumb_up_alt_outlined,
              iconColor: Colors.grey,
              buttonAction:(){
                print("Like Btn");
              },
          ),
          buttonTwo:  headerButton(
              btnText: "Comment",
              btnicon: Icons.message_outlined,
              iconColor: Colors.grey,
              buttonAction:(){
                print("Comment btn...");
              },
          ),
          buttonThree:  headerButton(
              btnText: "Share",
              btnicon: Icons.share,
              iconColor: Colors.grey,
              buttonAction:(){
                print("Share btn...");
              },
          ),

        ),


      ],
    ));
  }
  Widget imageSection(){
    return Container(
      padding: EdgeInsets.only(top: 5,bottom: 5),
      child: Image.asset(postImage),
    );
  }


  //================================================================//

  Widget textWidget({required  String text}){
    return Text(text ==null ? "" : text,
      style: TextStyle(
          color: Colors.grey[700],
          fontWeight: FontWeight.bold
      ),
    );
  }


  Widget footerSection(){
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle
                ),
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 10,
                ),
              ),
              SizedBox(width: 3,),
              textWidget(text: likeNumber),
            ],
          ),
          Container(
            child: Row(
              children: [
                textWidget(text: commentNumber),
                SizedBox(width: 3,),
                textWidget(text: "comments"),
                SizedBox(width: 10,),
                textWidget(text: sharesNumber==null ? "0" : sharesNumber),
                SizedBox(width: 3,),
                textWidget(text: "shares"),
                SizedBox(width: 15,),
                Avatar(
                    avatarLink: avatar,
                    displayStatus: false,
                  width: 25,
                  height: 25,
                ),

                IconButton(
                    onPressed: (){
                      print("down share out btn...edrop");
                    },
                    icon:Icon(
                        Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }



  Widget titleSection() {
    return postTitle !=null && postTitle!="" ? Container(
      padding: EdgeInsets.only(
          bottom: 5,
        left: 3,
        right: 3,
      ),
      child: Text(
        postTitle ==null ? "" : postTitle,
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ) : SizedBox();
  }

  Widget listTilePostCardHeader() {
    return ListTile(
      leading: Avatar(
        avatarLink: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          bluetickFlag ? BlueTick() : SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey,
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("more....");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
