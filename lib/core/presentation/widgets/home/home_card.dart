import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/views/estado_cuenta_view.dart';
import 'package:fresh_start/styles.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EstadoDeCuentaWidget1(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10.0, bottom: 7.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: colorPanel,
          boxShadow: [
            BoxShadow(
              color: colorMainText.withOpacity(0.1),
              blurRadius: 4.0,
              spreadRadius: 0.0,
              offset: const Offset(0.0, 6.0),
            ),
          ],
        ),
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
                    backgroundColor: colorSecondaryComplementary,
                    radius: 25.0,
                    child: Text(
                      'IC',
                      style: TextStyle(
                        fontFamily: 'MarkPro',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
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
                    fontWeight: FontWeight.bold,
                    color: colorMainText,
                  ),
                ),
                Text(
                  'Transferencia',
                  style: TextStyle(
                    fontFamily: 'MarkPro',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: colorMainText,
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$ 2,500.00",
                    style: TextStyle(
                      fontFamily: 'MarkPro',
                      fontSize: 20.0,
                      color: colorMainText,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "20-01-2024",
                            style: TextStyle(
                              fontFamily: 'MarkPro',
                              fontSize: 12,
                              color: colorTertearyText,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        children: [
                          Text(
                            "11:24 PM",
                            style: TextStyle(
                              fontFamily: 'MarkPro',
                              fontSize: 12,
                              color: colorTertearyText,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
