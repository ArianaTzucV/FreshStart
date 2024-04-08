import 'package:flutter/material.dart';

// void main() {
//   runApp(EstadoDeCuentaWidget());
// }

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
              flex: 50,
              child: Center(
                child: Text(
                  'Pago de Servicios',
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

//------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------

        Row(
          children: [
            Text(
              'Luz',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xff060912),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 365,
              height: 70,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: const Color(0x19000000),
                      offset: Offset(0, 8),
                      blurRadius: 10),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 12), // Espacio entre el borde y la imagen
                  Container(
                    padding: EdgeInsets.all(
                        5), // Espaciado interno del contenedor de la imagen
                    decoration: BoxDecoration(
                      color: Colors
                          .white, // Color del fondo del contenedor de la imagen
                      borderRadius: BorderRadius.circular(
                          50), // Bordes del contenedor de la imagen
                    ),
                    child: Image.asset(
                      'assets/image/CFE.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  SizedBox(
                      width:
                          10), // Espacio entre la imagen y el borde del contenedor
                  Text(
                    'CFE',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.normal,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

//------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------

        SizedBox(height: 20),

//------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------

        Row(
          children: [
            Text(
              'Telefonía, Internet y TV',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xff060912),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 365,
              height: 70,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: const Color(0x19000000),
                      offset: Offset(0, 8),
                      blurRadius: 10),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 12), // Espacio entre el borde y la imagen
                  Container(
                    padding: EdgeInsets.all(
                        5), // Espaciado interno del contenedor de la imagen
                    decoration: BoxDecoration(
                      color: Colors
                          .white, // Color del fondo del contenedor de la imagen
                      borderRadius: BorderRadius.circular(
                          50), // Bordes del contenedor de la imagen
                    ),
                    child: Image.asset(
                      'assets/image/CFE.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  SizedBox(
                      width:
                          10), // Espacio entre la imagen y el borde del contenedor
                  Text(
                    'Telcel Postpago',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.normal,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 10),
        Row(
          children: [
            Container(
              width: 365,
              height: 70,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: const Color(0x19000000),
                      offset: Offset(0, 8),
                      blurRadius: 10),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 12), // Espacio entre el borde y la imagen
                  Container(
                    padding: EdgeInsets.all(
                        5), // Espaciado interno del contenedor de la imagen
                    decoration: BoxDecoration(
                      color: Colors
                          .white, // Color del fondo del contenedor de la imagen
                      borderRadius: BorderRadius.circular(
                          50), // Bordes del contenedor de la imagen
                    ),
                    child: Image.asset(
                      'assets/image/CFE.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  SizedBox(
                      width:
                          10), // Espacio entre la imagen y el borde del contenedor
                  Text(
                    'Telmex',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.normal,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 10),

        Row(
          children: [
            Container(
              width: 365,
              height: 70,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: const Color(0x19000000),
                      offset: Offset(0, 8),
                      blurRadius: 10),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 12), // Espacio entre el borde y la imagen
                  Container(
                    padding: EdgeInsets.all(
                        5), // Espaciado interno del contenedor de la imagen
                    decoration: BoxDecoration(
                      color: Colors
                          .white, // Color del fondo del contenedor de la imagen
                      borderRadius: BorderRadius.circular(
                          50), // Bordes del contenedor de la imagen
                    ),
                    child: Image.asset(
                      'assets/image/CFE.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  SizedBox(
                      width:
                          10), // Espacio entre la imagen y el borde del contenedor
                  Text(
                    'TotalPlay',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.normal,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

//------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------
        SizedBox(height: 20),
//------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------
        Row(
          children: [
            Text(
              'Agua',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xff060912),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 365,
              height: 70,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: const Color(0x19000000),
                      offset: Offset(0, 8),
                      blurRadius: 10),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 12), // Espacio entre el borde y la imagen
                  Container(
                    padding: EdgeInsets.all(
                        5), // Espaciado interno del contenedor de la imagen
                    decoration: BoxDecoration(
                      color: Colors
                          .white, // Color del fondo del contenedor de la imagen
                      borderRadius: BorderRadius.circular(
                          50), // Bordes del contenedor de la imagen
                    ),
                    child: Image.asset(
                      'assets/image/CFE.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  SizedBox(
                      width:
                          10), // Espacio entre la imagen y el borde del contenedor
                  Text(
                    'AGUAKAN (Cancún)',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.normal,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
