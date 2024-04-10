import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fresh_start/core/presentation/views/Transfers/add_new_contact.dart';
import 'package:fresh_start/core/presentation/widgets/app_bar.dart';
import 'package:fresh_start/core/presentation/widgets/general_button.dart';
import 'package:fresh_start/core/presentation/widgets/subtitle.dart';
import 'package:fresh_start/styles.dart';

class CashExpress extends StatelessWidget {
  const CashExpress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(titleAppBar: "Retiro sin Tarjeta"),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 228,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xFF1E3C72), Color(0xFF2A5298)],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '**** **** **** 1284',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto'),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'Tu saldo Disponible',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'MarkPro',
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 12.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextRobotoBold(
                            text: '\$ 32,524',
                            size: 30.0,
                            color: Colors.white,
                          ),
                          TextRobotoBold(
                            text: '36',
                            size: 15.0,
                            color: Colors.white,
                          ),
                          SizedBox(width: 12),
                          Icon(
                            Icons.visibility_off,
                            color: colorTertearyText,
                            size: 26.0,
                          ),
                        ],
                      ),
                      SizedBox(height: 12.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Vencimiento',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'CVV',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '05/27',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '366',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const SubtitleWidget(subtitleText: 'Importe'),
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '\$',
                    style: TextStyle(
                        color: Color(0xFF060912),
                        fontSize: 40,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 4),
                  Container(
                    width: 125,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      style: const TextStyle(fontSize: 40),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddNewContactView()));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: const GeneralButtonWidget(text: 'Continuar'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
