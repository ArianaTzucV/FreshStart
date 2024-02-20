import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_start/core/presentation/views/transfers_view.dart';
import '../widgets/home/service_icon_button.dart';

class cash_express extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
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
                                    'Prueba 2',
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
          );
    
    }
  }