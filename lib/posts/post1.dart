import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone/utils/post_template.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'Sumit Pant',
      videoDescription: 'Flutter Ui tutorial',
      numberOfLikes: '2.5M',
      numberOfComments: '2222',
      numberOfShares: '200',
      userPost: Container(color: Colors.pink[500]),
    );
  }
}
