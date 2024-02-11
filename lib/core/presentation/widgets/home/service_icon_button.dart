import 'package:flutter/material.dart';

class ServiceIconButton extends StatelessWidget {
  final String title1;
  final String title2;
  final Icon icon;
  final Color bgColor;
  final Color fgColor;

  const ServiceIconButton({
    super.key,
    required this.title1,
    required this.title2,
    required this.icon,
    required this.bgColor,
    required this.fgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: bgColor,
          radius: 25.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [icon],
          ),
        ),
        Text(
          title1,
          style: TextStyle(
              fontSize: 12.0,
              fontFamily: 'MarkPro',
              fontWeight: FontWeight.normal,
              color: fgColor),
        ),
        Text(
          title2,
          style: TextStyle(
              fontSize: 12.0,
              fontFamily: 'MarkPro',
              fontWeight: FontWeight.normal,
              color: fgColor),
        )
      ],
    );
  }
}
