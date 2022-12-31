import 'package:flutter/material.dart';

class ProfileTab3 extends StatelessWidget {
  const ProfileTab3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 4,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(5),
            child: Container(
              color: Colors.green[300],
            ),
          );
        });
  }
}
