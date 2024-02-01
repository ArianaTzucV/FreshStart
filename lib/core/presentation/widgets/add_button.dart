import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/views/transacciones_internacionales_view.dart';

class AddButtonWidget extends StatelessWidget {
  const AddButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FloatingActionButton(
          key: key,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const TransaccionesIntl()),
            );
          },
          backgroundColor: const Color(0xFF1A2D4D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 40.00,
          ),
        ),
        const SizedBox(
            width: 10), // Puedes ajustar este espacio según sea necesario
        const Text(
          'Inscribir nuevo beneficiario',
          style: TextStyle(
            color: Color(0xFF1A2D4D), // Puedes ajustar el color del texto
            fontSize: 16.0, // Puedes ajustar el tamaño del texto
          ),
        ),
      ],
    );
  }
}
