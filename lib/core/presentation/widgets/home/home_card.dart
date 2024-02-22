import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    backgroundColor: Color(0xFF0F694F),
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
                                color: Color(0xFFA3A4A6)),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        children: [
                          Text("11:24 PM",
                              style: TextStyle(
                                  fontFamily: 'MarkPro',
                                  fontSize: 12,
                                  color: Color(0xFFA3A4A6)))
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
