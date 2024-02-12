import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_start/core/presentation/widgets/general_button.dart';
import 'package:fresh_start/core/presentation/widgets/subtitle.dart';

class NewContactView extends StatelessWidget {
  const NewContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubtitleWidget(subtitleText: 'Nuevo Destinatario'),
        const SizedBox(
          height: 25.0,
        ),
        Center(
          child: Container(
              padding: const EdgeInsets.all(25.0),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0XFFFAFAFA),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: SvgPicture.asset(
                      'assets/images/dataLoss.svg',
                      height: 60.0,
                      width: 60.0,
                    ),
                  ),
                  const Text(
                    'Introduce una cuenta, CLABE, tarjeta o celular para que te ayudemos con los datos del destinatario de cualquier banco:',
                    style: TextStyle(
                        fontFamily: 'MarkPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 15.0),
                    child: const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: ('Cuenta, CLABE, Tarjeta de crédito.'),
                          suffix: Icon(Icons.search)),
                    ),
                  ),
                ],
              )),
        ),
        Expanded(child: Container()),
        Center(
            child: Container(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: const GeneralButtonWidget(text: 'Buscar')))
      ],
    ));
  }
}
