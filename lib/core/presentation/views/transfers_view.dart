import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/widgets/app_bar.dart';
import 'package:fresh_start/core/presentation/widgets/rounded_button.dart';
import 'package:fresh_start/core/presentation/widgets/subtitle.dart';

class TransfersView extends StatelessWidget {
  const TransfersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(titleAppBar: 'Transferencias'),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SubtitleWidget(subtitleText: 'Cuenta Origen'),
              const SizedBox(
                height: 70.0,
              ),
              const SubtitleWidget(subtitleText: 'Destinatario'),
              const RoundedButtonWidget(),
              Container(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Column(children: [
                  Row(
                    children: [
                      const Text(
                        "Guardados",
                        style: TextStyle(
                            fontFamily: 'MarkPro',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Ver todos",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF034F8D),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
