import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/views/Transfers/International%20Transfers/second_international_transfert.dart';
import 'package:fresh_start/styles.dart';

class ContactCardInternatioanl extends StatelessWidget {
  const ContactCardInternatioanl({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                    offset: const Offset(0.0, 6.0))
              ]),
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
                        fontWeight: FontWeight.bold,
                        color: colorMainText),
                  ),
                  Text(
                    'IRVING COYOLT',
                    style: TextStyle(
                        fontFamily: 'MarkPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: colorMainText),
                  ),
                  Text(
                    'Cuenta Maze Bank',
                    style: TextStyle(
                        fontFamily: 'MarkPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: colorBorder),
                  ),
                  Text(
                    '0000 0000 0000',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: colorNumberText),
                  )
                ],
              ),
            ],
          )),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const SecondInternationalView()));
      },
    );
  }
}
