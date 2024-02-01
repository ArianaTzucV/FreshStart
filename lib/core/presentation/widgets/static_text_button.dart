import 'package:flutter/material.dart';

class StaticTextButton extends StatelessWidget {
  const StaticTextButton({Key? key});
  Color blue = const Color(0xFF034F8D);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            // Código
          },
          child: Text(
            'Cambiar',
            style: TextStyle( color: blue),
            ),
        ),
      ],
    );
  }
}
