import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButtons extends StatelessWidget {
  final icon;
  final String number;

  const MyButtons({super.key, required this.icon, required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(children: [
        Icon(icon, size: 30),
        SizedBox(
          height: 10,
        ),
        Text(number)
      ]),
    );
  }
}
