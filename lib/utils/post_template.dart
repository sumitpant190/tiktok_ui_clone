import 'package:flutter/material.dart';
import 'button.dart';

class PostTemplate extends StatelessWidget {
  final String username;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;

  const PostTemplate(
      {super.key,
      required this.username,
      required this.videoDescription,
      required this.numberOfLikes,
      required this.numberOfComments,
      required this.numberOfShares,
      required this.userPost});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //User Posts
          userPost,

          //Username and captions
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@$username',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(text: videoDescription),
                    TextSpan(
                        text: ' #fyp #flutter',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ]))
                ],
              ),
            ),
          ),

          //buttons
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButtons(icon: Icons.favorite, number: numberOfLikes),
                  MyButtons(
                      icon: Icons.chat_bubble_outlined,
                      number: numberOfComments),
                  MyButtons(icon: Icons.send, number: numberOfShares),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
