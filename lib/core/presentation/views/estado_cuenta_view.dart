import 'package:flutter/material.dart';

void main() {
  runApp(EstadoDeCuentaWidget());
}

class EstadoDeCuentaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: EstadoDeCuentaBody(),
        ),
      ),
    );
  }
}

class EstadoDeCuentaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 24,
              ),
              onPressed: () {
                // Aquí puedes definir la función a ejecutar cuando se presione el botón de flecha
              },
            ),
            Expanded(
              flex: 10,
              child: Center(
                child: Text(
                  'Cuenta',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Text(
              'Mi cuenta ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '0001TJ0117',
              style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
            ),
            SizedBox(width: 10),
            Text(
              '\$100,000,000.09',
              style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '° 1111',
              style: TextStyle(fontSize: 10, color: Colors.grey.shade700),
            ),
            SizedBox(width: 10),
            Text(
              'Saldo disponible',
              style: TextStyle(fontSize: 8, color: Colors.grey.shade700),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              'Mis Compras',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '0001TJ0117',
                          style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
                        ),
                        Row(
                          children: [
                            Text(
                              '-\$2,500.00',
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '°  1111',
                          style: TextStyle(fontSize: 9, color: Colors.grey.shade700),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '20-01-2024  10:00PM',
                          style: TextStyle(fontSize: 9, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
