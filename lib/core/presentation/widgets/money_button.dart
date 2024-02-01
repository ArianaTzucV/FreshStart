import 'package:flutter/material.dart';

class MoneyButton extends StatelessWidget {
  const MoneyButton({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    Color gray = const Color(0xFF808080);
    Color white = Colors.white;
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            // Acción a realizar cuando se presiona el botón
            print("Botón presionado");
          },
          child: Text(
            '100',
            style: TextStyle(color: white),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            minimumSize: const Size(125.0, 45.0),
            backgroundColor: gray,
          ),
        ),
      ],
    );
  }
}
