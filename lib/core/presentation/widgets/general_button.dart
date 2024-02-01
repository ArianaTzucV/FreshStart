import 'package:flutter/material.dart';

class GeneralButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const GeneralButtonWidget({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: SizedBox(
          height: 55.0, // Altura fija de 50 píxeles
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
