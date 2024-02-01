import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/widgets/texts/title.dart';

class ContactButtonWidget extends StatelessWidget {
  const ContactButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.people, size: 60.0,),
        SizedBox(width: 30.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextTitleWidget(title: "BRAYN SAHAGUN"),
            Text("Cuenta Bancaria", style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.bold, color: Colors.grey),),
            Text("Maze Bank", style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500, color: Colors.grey),),
            Text("Mexico", style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w100, color: Colors.grey),),
          ],
        ),
      ],
    );
  }
}
