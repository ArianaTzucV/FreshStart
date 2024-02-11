import 'package:flutter/material.dart';

class TransfersView extends StatelessWidget {
  const TransfersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: const Text(
                  "Cuenta Origen",
                  style: TextStyle(
                      fontFamily: 'MarkPro',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 70.0,
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: const Text(
                  "Destinatario",
                  style: TextStyle(
                      fontFamily: 'MarkPro',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline,
                        size: 50.0,
                        color: Color(0XFF034F8D),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Nuevo",
                          style: TextStyle(
                              fontFamily: 'MarkPro',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF034F8D)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Column(children: [
                  Row(
                    children: [
                      const Text(
                        "Guardados",
                        style: TextStyle(
                            fontFamily: 'MarkPro',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
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
                  )
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
