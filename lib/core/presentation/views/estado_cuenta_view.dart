import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/views/estado_cuenta_view2.dart';

void main() {
  runApp(EstadoDeCuentaWidget1());
}

class EstadoDeCuentaWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ()));
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
            SizedBox(width: 15),
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
        SizedBox(height: 10),
        Expanded(
  child: ListView.builder(
    itemCount: 7,
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 10), // Agregar un espacio vertical entre los botones
        child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EstadoDeCuentaWidget()));
                },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.grey.shade200),
            ),
          ),
          child: Container(
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
                    Text(
                      '-\$2,500.00',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '°  1111',
                      style: TextStyle(fontSize: 9, color: Colors.grey.shade700),
                    ),
                    Text(
                      '20-01-2024  10:00PM',
                      style: TextStyle(fontSize: 9, color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  ),
),
      ],
    );
  }
}
