import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/widgets/app_bar.dart';
import 'package:fresh_start/core/presentation/widgets/rounded_button.dart';
import 'package:fresh_start/core/presentation/widgets/subtitle.dart';

class InternationalTrasnfersView extends StatelessWidget{
  const InternationalTrasnfersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(titleAppBar: 'Transferencias Internacionales'),
      body: Container(
        child: const Column(
          children: [
            SubtitleWidget(subtitleText: "Cuenta de Origen"),
            SizedBox(height: 25,),
            SubtitleWidget(subtitleText: "Destinatario"),
            RoundedButtonWidget()
          ],
        ),
      ),
    );
  }

}