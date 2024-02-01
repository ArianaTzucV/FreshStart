import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/widgets/money_button.dart';

class RetiroSinTarjeta extends StatelessWidget{
  const RetiroSinTarjeta ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Retiro sin Tarjeta"),
      ),
      body: Container(
        child: const Column(
          children: [
            SizedBox(height: 20.0),
            MoneyButton()
          ],
        ),
      ),
    );
  }
}