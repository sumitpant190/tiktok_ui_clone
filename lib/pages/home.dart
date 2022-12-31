import 'package:flutter/cupertino.dart';
import '../posts/post1.dart';
import '../posts/post2.dart';
import '../posts/post3.dart';

class UserHome extends StatelessWidget {
  final controller = PageController(initialPage: 0);

  UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: controller,
      children: [
        MyPost1(),
        MyPost2(),
        MyPost3(),
      ],
    );
  }
}
