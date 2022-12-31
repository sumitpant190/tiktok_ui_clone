import 'package:flutter/material.dart';

import '../utils/post_template.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        username: 'Eminem',
        videoDescription: 'videoDescription 3',
        numberOfLikes: '9.9M',
        numberOfComments: '888',
        numberOfShares: '73763',
        userPost: Container(
          color: Colors.blue[200],
        ));
  }
}
