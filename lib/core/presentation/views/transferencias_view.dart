import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/widgets/static_text_button.dart';

class Transferencias extends StatelessWidget{
  const Transferencias ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Transferencias"),
      ),
      body: Container(
        child: const Column(
          children: [
            SizedBox(height: 20.0),
            Text("Cuenta de origen"),
            StaticTextButton()
          ],
        ),
      ),
    );
  }
}