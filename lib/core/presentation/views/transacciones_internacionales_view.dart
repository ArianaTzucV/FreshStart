import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/widgets/InternationalTransactions/add_new_contact_button.dart';
import 'package:fresh_start/core/presentation/widgets/general_button.dart';
import 'package:fresh_start/core/presentation/widgets/user_button.dart';

class TransaccionesIntl extends StatelessWidget {
  const TransaccionesIntl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Transacciones Internacionales"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20.0),
          const Row(
            children: [
              SizedBox(width: 20.0),
              AddNewContactButton(),
            ],
          ),
          const SizedBox(height: 10.0,),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 12.0),
              Text("Beneficiarios Guardados"),
            ],
          ),
          
          const ContactButtonWidget(),
          Expanded(
            child: Container(), // Espacio expansivo para empujar el botón hacia abajo
          ),
          GeneralButtonWidget(
            text: "Continuar",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TransaccionesIntl(),
                ),
              );
            },
          ),
          const SizedBox(height: 20.0,)
        ],
      ),
    );
  }
}
