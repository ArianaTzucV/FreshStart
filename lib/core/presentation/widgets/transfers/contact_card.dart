import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
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
                  'Irving',
                  style: TextStyle(
                      fontFamily: 'MarkPro',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'IRVING COYOLT',
                  style: TextStyle(
                      fontFamily: 'MarkPro',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Cuenta Maze Bank',
                  style: TextStyle(
                      fontFamily: 'MarkPro',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '0000 0000 0000',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ],
        ));
  }
}
