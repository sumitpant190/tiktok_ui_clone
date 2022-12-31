import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone/utils/post_template.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        username: 'Stanley',
        videoDescription: 'videoDescription 2',
        numberOfLikes: '2.6M',
        numberOfComments: '5555',
        numberOfShares: '6664',
        userPost: Container(
          color: Colors.orange[300],
        ));
  }
}
