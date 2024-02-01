import 'package:flutter/material.dart';

class StaticTextButton extends StatelessWidget {
  const StaticTextButton({super.key});
  // Color blue = const Color(0xFF034F8D);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            // Código
          },
          child: const Text(
            'Cambiar',
            style: TextStyle( color: Color(0xFF034F8D)),
            ),
        ),
      ],
    );
  }
}
