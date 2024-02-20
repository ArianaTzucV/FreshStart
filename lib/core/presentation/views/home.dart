import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_start/colors.dart';
import 'package:fresh_start/core/presentation/views/transfers_view.dart';
import 'package:fresh_start/core/presentation/widgets/home/other_service_service.dart';

import '../widgets/home/service_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFF0F2F5),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: const CircleAvatar(
                radius: 35.0,
                backgroundColor: c_secondary_complementary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "BS",
                      style: TextStyle(
                          fontFamily: 'MarkPro',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '¡Hola!',
                    style: TextStyle(
                        fontFamily: 'MarkPro',
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'Brayn Sahagun',
                    style: TextStyle(
                        fontFamily: 'MarkPro',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.refresh,
                    color: Color(0xFF034F8D),
                    size: 25.0,
                  )),
            )
          ],
        ),
        toolbarHeight: 80.0,
        titleSpacing: 0.0,
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 210,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFF1E3C72), Color(0xFF2A5298)],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 10.0, right: 25.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Tu Saldo Disponible',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.0),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "\$ 32,524",
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      const Text(
                                        '36',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.visibility_off,
                                            color: Color(0xFFA3A4A6),
                                            size: 26.0,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              const Spacer(),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/mc_symbol.svg',
                                    height: 63,
                                    width: 89,
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 25.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ServiceIconButton(
                                  title1: 'Transferir',
                                  title2: '',
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Color(0xFF034F8D),
                                  ),
                                  bgColor: const Color(0xFFFAFAFA),
                                  fgColor: Colors.white,
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const TransfersView()));
                                  },
                                ),
                                ServiceIconButton(
                                  title1: "Retiro sin",
                                  title2: "Tarjeta",
                                  icon: const Icon(
                                    Icons.send_to_mobile,
                                    color: Color(0xFF034F8D),
                                  ),
                                  bgColor: const Color(0xFFFAFAFA),
                                  fgColor: const Color(0xFFFAFAFA),
                                  onTap: () {},
                                ),
                                ServiceIconButton(
                                  title1: "Pago de",
                                  title2: "Servicio",
                                  icon: const Icon(
                                    Icons.electrical_services_outlined,
                                    color: Color(0xFF034F8D),
                                  ),
                                  bgColor: const Color(0xFFFAFAFA),
                                  fgColor: const Color(0xFFFAFAFA),
                                  onTap: () {},
                                ),
                                ServiceIconButton(
                                    title1: "Estado de",
                                    title2: "Cuenta",
                                    icon: const Icon(
                                      Icons.description,
                                      color: Color(0xFF034F8D),
                                    ),
                                    bgColor: const Color(0xFFFAFAFA),
                                    fgColor: const Color(0xFFFAFAFA),
                                    onTap: () {}),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const OtherServiceSection(),
          Center(
            child: Container(
              padding:
                  const EdgeInsets.only(left: 25.0, top: 30.0, right: 25.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Actividad Reciente',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Ver todos",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF034F8D),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      color: const Color(0xFFFAFAFA),
                      padding: const EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                      ),
                      child: const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  radius: 25.0,
                                  child: Text(
                                    'IC',
                                    style: TextStyle(
                                        fontFamily: 'MarkPro',
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Irving Coyolt',
                                style: TextStyle(
                                    fontFamily: 'MarkPro',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Transferencia',
                                style: TextStyle(
                                    fontFamily: 'MarkPro',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
