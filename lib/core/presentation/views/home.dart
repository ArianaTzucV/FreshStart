import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const HeaderHomePage(),
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
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      const Text(
                                        '36',
                                        style: TextStyle(
                                            fontSize: 15,
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
                            padding: const EdgeInsets.only(top: 25.0),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // ServiceIconButton(
                                //   iconService: Icon(Icons.arrow_back),
                                //   serviceText: "Transferir",
                                //   serviceText2: "",
                                //   bgColor: Color(0xFFFAFAFA),
                                //   txtColor: Colors.white,
                                // ),
                                // ServiceIconButton(
                                //   iconService: Icon(Icons.send_to_mobile),
                                //   serviceText: "Retiro sin",
                                //   serviceText2: "Tarjeta",
                                //   bgColor: Color(0xFFFAFAFA),
                                //   txtColor: Colors.white,
                                // ),
                                // ServiceIconButton(
                                //   iconService: Icon(Icons.electrical_services),
                                //   serviceText: "Pago de",
                                //   serviceText2: "Servicios",
                                //   bgColor: Color(0xFFFAFAFA),
                                //   txtColor: Colors.white,
                                // ),
                                // ServiceIconButton(
                                //   iconService: Icon(Icons.description),
                                //   serviceText: "Estado de",
                                //   serviceText2: "Cuenta",
                                //   bgColor: Color(0xFFFAFAFA),
                                //   txtColor: Colors.white,
                                // )
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
          Center(
            child: Container(
              padding: const EdgeInsets.only(top: 25.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xFFFAFAFA)),
                padding:
                    const EdgeInsets.only(left: 25.0, top: 10.0, right: 25.0),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Otros Servicios",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 25.0, bottom: 20.0),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // ServiceIconButton(
                          //   iconService: Icon(
                          //     Icons.arrow_back,
                          //     color: Colors.white,
                          //   ),
                          //   serviceText: "Transferencias",
                          //   serviceText2: "Internacionales",
                          //   bgColor: Color(0xFF034F8D),
                          //   txtColor: Color(0xFF060912),
                          // ),
                          // ServiceIconButton(
                          //   iconService:
                          //       Icon(Icons.phone_android, color: Colors.white),
                          //   serviceText: "Recarga",
                          //   serviceText2: "Celular",
                          //   bgColor: Color(0xFF034F8D),
                          //   txtColor: Color(0xFF060912),
                          // ),
                          // ServiceIconButton(
                          //   iconService:
                          //       Icon(Icons.qr_code, color: Colors.white),
                          //   serviceText: "Operaciones",
                          //   serviceText2: "QR",
                          //   bgColor: Color(0xFF034F8D),
                          //   txtColor: Color(0xFF060912),
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.only(top: 25.0),
              child: Container(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
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
                            "Ver todas",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF034F8D),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        // Container(
                        //   padding: const EdgeInsets.only(bottom: 20.0),
                        //   child: const RecentActivityCard(),
                        // ),
                        // Container(
                        //   padding: const EdgeInsets.only(bottom: 20.0),
                        //   child: const RecentActivityCard(),
                        // ),
                        // Container(
                        //   padding: const EdgeInsets.only(bottom: 20.0),
                        //   child: const RecentActivityCard(),
                        // ),
                        // Container(
                        //   padding: const EdgeInsets.only(bottom: 20.0),
                        //   child: const RecentActivityCard(),
                        // ),
                        // Container(
                        //   padding: const EdgeInsets.only(bottom: 20.0),
                        //   child: const RecentActivityCard(),
                        // ),
                        // Container(
                        //   padding: const EdgeInsets.only(bottom: 20.0),
                        //   child: const RecentActivityCard(),
                        // ),
                        // Container(
                        //   padding: const EdgeInsets.only(bottom: 20.0),
                        //   child: const RecentActivityCard(),
                        // ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
