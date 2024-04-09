import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/views/estado_cuenta_view.dart';

class EstadoDeCuentaWidget extends StatelessWidget {
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EstadoDeCuentaWidget1()));
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
        SizedBox(height: 30),
        Row(
          children: [
            SizedBox(width: 25),
            Text(
              'Detalle de',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 70),
            Text(
              'Fresh',
              style: TextStyle(
                fontFamily: 'Calor',
                color: Color.fromARGB(255, 5, 31, 70),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              'Bank',
              style: TextStyle(
                fontFamily: 'Calor',
                color: Colors.blue[500],
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 25),
            Text(
              'Pago',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 30),
        Expanded(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 500),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color.fromARGB(255, 238, 238, 238)),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'FreshBank',
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Color.fromARGB(126, 38, 131, 41),
                          size: 70,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '¡Pago exitoso!',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '-\$ 53,600',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '06 ENE, 2024 -- 18:15 ',
                          style: TextStyle(fontSize: 9, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 10),
                        Text(
                          '217197305',
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Factura',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Electrificadora',
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 10),
                        Text(
                          'del Huila',
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Comprobante',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '000001810',
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                    SizedBox(height: 45),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pagasten con',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Ahorros',
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 10),
                        Text(
                          '****6705',
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Center(
          child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EstadoDeCuentaWidget1()));
                },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 130, vertical: 20), backgroundColor: Color.fromARGB(255, 5, 31, 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Salir',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}