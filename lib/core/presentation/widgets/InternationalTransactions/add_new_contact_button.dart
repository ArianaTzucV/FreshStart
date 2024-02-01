import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/widgets/add_button.dart';

class AddNewContactButton extends StatelessWidget {
  const AddNewContactButton({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AddButtonWidget(),
        SizedBox(width: 10),
        Text(
          'Inscribir nuevo beneficiario',
          style: TextStyle(
            color: Color(0xFF1A2D4D),
            fontSize: 16.0,
          )
        )
      ],
    );
  }


}