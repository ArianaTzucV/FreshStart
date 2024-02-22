import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/widgets/general_button.dart';
import 'package:fresh_start/colors.dart';

class CodiRegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyScreen(),
      ),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          // Fondo azul arriba
          Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: Color(0xFF034F8D)),
          // Texto debajo del fondo azul
          Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    'Paga y cobra con tu celular en muchos comercios',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              )),

          Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Usa la nueva función para realizar tus transaciones sin comisiones de una manera rapida y sencilla en cualquier sitio.',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: const Color.fromARGB(255, 101, 99, 99)),
                  ),
                ],
              )),

          // Botón en la mitad inferior
          Expanded(
            child:
                Container(), // Espacio expansivo para empujar el botón hacia abajo
          ),
          GeneralButtonWidget(
            text: "Continuar",
          ),
          const SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
