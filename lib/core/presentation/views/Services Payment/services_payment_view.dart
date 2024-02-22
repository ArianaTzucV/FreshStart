import 'package:flutter/material.dart';
import 'package:fresh_start/colors.dart';

class CodiaPage extends StatefulWidget {
  CodiaPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _CodiaPage();
}

class _CodiaPage extends State<CodiaPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: BoxDecoration(
            color: colorBackground,
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                width: 430,
                top: 30,
                height: 26,
                child: Text(
                  'Pago de Servicios',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: colorMainText,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Positioned(
                left: 19,
                width: 34,
                top: 20,
                height: 30,
                child: Image.asset(
                  'assets/image/back.png',
                  width: 34,
                  height: 34,
                ),
              ),
              Positioned(
                left: 65,
                width: 300,
                top: 90,
                height: 50,
                child: Stack(
                  children: [
                    Positioned(
                      left: 12,
                      width: 233,
                      top: 14,
                      height: 20,
                      child: Text(
                        'Nombre de la empresa',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: const Color(0xff808080),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      width: 300,
                      top: 0,
                      height: 50,
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff696969), width: 1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 264,
                      width: 28,
                      top: 12,
                      height: 25,
                      child: Image.asset(
                        'assets/image/busqueda.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                  ],
                ),
              ),
              //Busqueda
              Positioned(
                left: 20,
                width: 390,
                //ARRIBA DE CFE
                top: 200,
                height: 91,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      width: 390,
                      top: 0,
                      height: 91,
                      child: Container(
                        width: 390,
                        height: 91,
                        decoration: BoxDecoration(
                          color: const Color(0xfffafafa),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: const Color(0x19000000),
                                offset: Offset(0, 6),
                                blurRadius: 4),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 87,
                      width: 126,
                      top: 37,
                      height: 20,
                      child: Text(
                        'CFE',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: const Color(0xff060912),
                            fontFamily: 'MarkPro-Bold',
                            fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 17,
                      width: 60,
                      top: 15,
                      height: 60,
                      child: Image.asset(
                        'assets/image/CFE.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                width: 390,
                top: 380,
                height: 91,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      width: 390,
                      top: 0,
                      height: 91,
                      child: Container(
                        width: 390,
                        height: 91,
                        decoration: BoxDecoration(
                          color: const Color(0xfffafafa),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 87,
                      width: 304,
                      top: 37,
                      height: 20,
                      child: Text(
                        'Telcel Postpago',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: const Color(0xff060912),
                            fontFamily: 'MarkPro-Bold',
                            fontWeight: FontWeight.normal),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 17,
                      width: 60,
                      top: 15,
                      height: 60,
                      child: Image.asset(
                        'images/image_6681360.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                width: 390,
                top: 798,
                height: 91,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      width: 390,
                      top: 0,
                      height: 91,
                      child: Container(
                        width: 390,
                        height: 91,
                        decoration: BoxDecoration(
                          color: const Color(0xfffafafa),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: const Color(0x19000000),
                                offset: Offset(0, 6),
                                blurRadius: 4),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 87,
                      width: 304,
                      top: 37,
                      height: 20,
                      child: Text(
                        'AGUAKAN (Cancún)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: const Color(0xff060912),
                            fontFamily: 'MarkPro-Bold',
                            fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 17,
                      width: 60,
                      top: 15,
                      height: 60,
                      child: Image.asset(
                        'images/image_6721433.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                width: 390,
                top: 480,
                height: 91,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      width: 390,
                      top: 0,
                      height: 91,
                      child: Container(
                        width: 390,
                        height: 91,
                        decoration: BoxDecoration(
                          color: const Color(0xfffafafa),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: const Color(0x19000000),
                                offset: Offset(0, 6),
                                blurRadius: 4),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 87,
                      width: 126,
                      top: 37,
                      height: 20,
                      child: Text(
                        'Telmex',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: const Color(0xff060912),
                            fontFamily: 'MarkPro-Bold',
                            fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 17,
                      width: 60,
                      top: 15,
                      height: 60,
                      child: Image.asset(
                        'images/image_6721400.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                width: 390,
                top: 580,
                height: 91,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      width: 390,
                      top: 0,
                      height: 91,
                      child: Container(
                        width: 390,
                        height: 91,
                        decoration: BoxDecoration(
                          color: const Color(0xfffafafa),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: const Color(0x19000000),
                                offset: Offset(0, 6),
                                blurRadius: 4),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 87,
                      width: 126,
                      top: 37,
                      height: 20,
                      child: Text(
                        'Totalplay',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: const Color(0xff060912),
                            fontFamily: 'MarkPro-Bold',
                            fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 17,
                      width: 60,
                      top: 15,
                      height: 60,
                      child: Image.asset(
                        'images/image_6721408.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 36,
                width: 183,
                top: 165,
                height: 21,
                child: Text(
                  'Luz',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      color: const Color(0xff060912),
                      fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Positioned(
                left: 36,
                width: 226,
                top: 345,
                height: 21,
                child: Text(
                  'Telefonía, Internet y TV',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      color: const Color(0xff060912),
                      fontWeight: FontWeight.bold),
                  maxLines: 9999,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Positioned(
                left: 36,
                width: 226,
                top: 765,
                height: 21,
                child: Text(
                  'Agua',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      color: const Color(0xff060912),
                      fontFamily: 'MarkPro-Bold',
                      fontWeight: FontWeight.normal),
                  maxLines: 9999,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Positioned(
                left: 283,
                width: 110,
                top: 305,
                height: 18,
                child: Text(
                  'Ver todos(1)',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 15,
                    color: const Color(0xff034f8d),
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
