import 'package:flutter/material.dart';
import 'package:fresh_start/core/presentation/widgets/app_bar.dart';
import 'package:fresh_start/core/presentation/widgets/estado_cuenta/status.dart';
import 'package:fresh_start/core/presentation/widgets/subtitle.dart';

class EstadoDeCuentaWidget1 extends StatelessWidget {
  const EstadoDeCuentaWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(titleAppBar: 'Cuenta'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.0),
              SubtitleWidget(subtitleText: 'Mi cuenta'),
              SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: EdgeInsets.only(top: 1, right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '0001TJ0117',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'MarkPro',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF808080),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '\$100,000,000.09',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF808080),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Saldo disponible',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontFamily: 'MarkPro',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF808080),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.circle_rounded,
                      size: 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1111',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'MarkPro',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF808080),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              SubtitleWidget(subtitleText: 'Mis compras'),
              SizedBox(
                height: 8.0,
              ),
              StatusWidget(),
              StatusWidget(),
              StatusWidget(),
              StatusWidget(),
              StatusWidget(),
              StatusWidget(),
              StatusWidget(),
              StatusWidget(),
              StatusWidget()
            ],
          ),
        ),
      ),
    );
  }
}
