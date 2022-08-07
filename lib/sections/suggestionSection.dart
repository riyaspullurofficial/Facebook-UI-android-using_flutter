import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestioncard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may know"),
            trailing: IconButton(
              onPressed: (){
                print("more clicked");
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                    avatar: dq3,
                    name:"Dulqar salman",
                    mutualFriends: "1k Mutual Friends",
                    addFriend: (){
                      print("Add friend clicked");
                    },
                    removeFriend: (){
                      print("Remove Friend Clicked");
                    }
                ),
                SuggestionCard(
                    avatar: dq2,
                    name:"Dulqar salman official",
                    mutualFriends: "10 Mutual Friends",
                    addFriend: (){
                      print("Add friend clicked");
                    },
                    removeFriend: (){
                      print("Remove Friend Clicked");
                    }
                ),
                SuggestionCard(
                    avatar: post2,
                    name:"Rolls Roys",
                    mutualFriends: "100 Mutual Friends",
                    addFriend: (){
                      print("Add friend clicked");
                    },
                    removeFriend: (){
                      print("Remove Friend Clicked");
                    }
                ),
                SuggestionCard(
                    avatar: dq3,
                    name:"Dulqar salman",
                    mutualFriends: "1k Mutual Friends",
                    addFriend: (){
                      print("Add friend clicked");
                    },
                    removeFriend: (){
                      print("Remove Friend Clicked");
                    }
                ),
                SuggestionCard(
                    avatar: dq2,
                    name:"Dulqar salman official",
                    mutualFriends: "10 Mutual Friends",
                    addFriend: (){
                      print("Add friend clicked");
                    },
                    removeFriend: (){
                      print("Remove Friend Clicked");
                    }
                ),
                SuggestionCard(
                    avatar: post2,
                    name:"Rolls Roys",
                    mutualFriends: "100 Mutual Friends",
                    addFriend: (){
                      print("Add friend clicked");
                    },
                    removeFriend: (){
                      print("Remove Friend Clicked");
                    }
                ),
              ],

            ),
          )
        ],
      ),
    );
  }
}
