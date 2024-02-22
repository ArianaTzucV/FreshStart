import 'package:flutter/material.dart';
import 'package:fresh_start/colors.dart';
import 'package:fresh_start/core/presentation/widgets/app_bar.dart';
import 'package:fresh_start/core/presentation/widgets/subtitle.dart';

class RechargesView extends StatelessWidget {
  const RechargesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarWidget(titleAppBar: "Recargas"),
        body: ListView(
          children: const [
            SubtitleWidget(subtitleText: "Selecciona la compañia"),
            //Abajo de este comentario construyes todo lo que falta
            
          ],
        ));
  }
}
