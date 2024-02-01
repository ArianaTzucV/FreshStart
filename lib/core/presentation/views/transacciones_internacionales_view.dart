import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/widgets/add_button.dart';
import 'package:fresh_start/core/presentation/widgets/general_button.dart';
import 'package:fresh_start/main.dart';

class TransaccionesIntl extends StatelessWidget {
  const TransaccionesIntl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Transacciones Internacionales"),
      ),
      body: const Column(
        children: [
          SizedBox(height: 20.0),
          Row(
            children: [
              AddButtonWidget(),
              SizedBox(
                  width: 10), // Puedes ajustar este espacio según sea necesario
              Text(
                'Inscribir nuevo beneficiario',
                style: TextStyle(
                  color: Color(0xFF1A2D4D), // Puedes ajustar el color del texto
                  fontSize: 16.0, // Puedes ajustar el tamaño del texto
                ),
              ),
            ],
          ),
          Text("Beneficiarios Guardados"),
          GeneralButtonWidget(
            text: "Continuar"
          )
        ],
      ),
    );
  }
}
