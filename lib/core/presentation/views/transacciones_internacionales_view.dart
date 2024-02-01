import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/widgets/add_button.dart';

class TransaccionesIntl extends StatelessWidget {
  const TransaccionesIntl({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Transacciones Internacionales"),
      ),
      body: Container(
        child: const Column(
          children: [
            SizedBox(height: 20.0),
            AddButtonWidget(),
            Text("Beneficiarios Guardados")
          ],
        ),
      ),
    );
  }
}
