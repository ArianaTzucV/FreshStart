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
              const SizedBox(height: 200),
              ElevatedButton(
                onPressed: () {
                  _showBottomSheet(context);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF1A2D4D),
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 120.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: const Text(
                  "Continuar",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'MarkPro'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          padding: const EdgeInsets.all(30.0),
          decoration: const BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Retiro Disponible",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MarkPro',
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8.0),
              const CircleAvatar(
                backgroundColor: Color(0xFF20B087),
                radius: 40,
                child: Icon(
                  Icons.check,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pagó",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF060912),
                    ),
                  ),
                  Text(
                    "Brayn Sahagun",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF060912),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cuenta",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF606167),
                    ),
                  ),
                  Text(
                    "5558 •••• •••• ••84",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF606167),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Clabe Destino",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF060912),
                    ),
                  ),
                  Text(
                    "123456789012345678",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                      color: Color(0xFF606167),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fecha",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF060912),
                    ),
                  ),
                  Text(
                    "17 Abril, 2024",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF060912),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "7:08 pm",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF606167),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Clave de Retiro",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF060912),
                    ),
                  ),
                  Text(
                    "5533 4387 2123",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: Color(0xFF060912),
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "*12 dígitos",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF606167),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Código de seguridad",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF060912),
                    ),
                  ),
                  Text(
                    "1512",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: Color(0xFF060912),
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "*4 dígitos",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF606167),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Monto",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF060912),
                    ),
                  ),
                  Text(
                    "\$32,524",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto',
                      color: Color(0xFF060912),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Puedes compartir esta clave para que otra persona haga el retiro.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'MarkPro',
                      color: Color(0xFF606167),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF1A2D4D),
                  padding: const EdgeInsets.symmetric(
                      vertical: 18.0, horizontal: 145.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: const Text(
                  "Salir",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'MarkPro'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
