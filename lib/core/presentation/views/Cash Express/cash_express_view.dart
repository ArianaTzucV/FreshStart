import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fresh_start/core/presentation/widgets/app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retiro sin Tarjeta',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBarWidget(titleAppBar: "Retiro sin Tarjeta"),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 32,
                        color: Colors.black,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Retiro sin Tarjeta',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 390,
                    height: 222,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFF1A2D4D),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '**** **** **** 1284',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Tu saldo Disponible',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '\$40,000',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Vencimiento:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '05/27',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'CVV: 366',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Importe',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      width: 150,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          ThousandsSeparatorInputFormatter(),
                          TextInputFormatter.withFunction((oldValue, newValue) {
                            if (newValue.text.isEmpty) return newValue;
                            final value = int.parse(newValue.text.replaceAll(',', ''));
                            if (value > 60000) {
                              // Muestra un mensaje de error si la cantidad excede los $60,000
                              return oldValue;
                            }
                            return newValue;
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Expanded(
                  child: Container(), // Espacio expansivo para empujar el botón hacia abajo
                ),
                ElevatedButton(
                  onPressed: () {
                    // Acción cuando se presiona el botón
                  },
                  child: Text("Continuar"),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ThousandsSeparatorInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    int? value = int.tryParse(newValue.text.replaceAll(',', ''));
    final formatter = NumberFormat("#,###");
    String newText = formatter.format(value);
    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}

NumberFormat(String s) {
}

