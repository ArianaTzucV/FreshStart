import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/widgets/app_bar.dart';
import 'package:fresh_start/core/presentation/widgets/general_button.dart';
import 'package:fresh_start/core/presentation/widgets/subtitle.dart';
import 'package:fresh_start/styles.dart';

class SecondInternationalView extends StatelessWidget {
  const SecondInternationalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(titleAppBar: 'Transacciones Internacionales'),
      body: Center(
        child: Column(
          children: [
            Container(
                padding:
                    const EdgeInsets.only(top: 15.0, left: 25.0, right: 25.0),
                decoration: BoxDecoration(
                    color: colorPanel,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SubtitleWidget(subtitleText: 'Cuenta de Origen'),
                    const SizedBox(height: 25.0),
                    const SubtitleWidget(subtitleText: 'Destinatario'),
                    const TextMarkProMedium(
                      text: 'Nombre',
                      color: colorSecondaryText,
                    ),
                    const TextMarkProRegular(
                      text: 'Brayn Sahagun',
                    ),
                    const TextMarkProMedium(
                      text: 'CLABE',
                      color: colorSecondaryText,
                    ),
                    const TextMarkProRegular(text: '123456789012345678'),
                    const SubtitleWidget(subtitleText: 'Monto'),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '\$0',
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(child: Container()),
            Container(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: const GeneralButtonWidget(text: 'Confirmar'))
          ],
        ),
      ),
    );
  }
}
