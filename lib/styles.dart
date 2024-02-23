import 'package:flutter/material.dart';

const Color colorBackground = Color(0xFFF0F2F5);
const Color colorPanel = Color(0xFFFAFAFA);
const Color colorBorder = Color(0xFF696969);
const Color colorMainText = Color(0xFF060912);
const Color colorSecondaryText = Color(0xFF606167);
const Color colorTertearyText = Color(0xFFA3A4A6);
const Color colorPrimary = Color(0xFF1A2D4D);
const Color colorPrimaryComplementary = Color(0xFF034F8D);
const Color colorSecondaryComplementary = Color(0xFF2F7D67);
const Color colorDisabled = Color(0xFFC7CDD6);
const Color colorDisabledText = Color(0xFF9B9B9B);
const Color colorNumberText = Color(0xFF808080);

class Text_MarkProRegular extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const Text_MarkProRegular({
    Key? key, 
    required this.text,
    this.color = Colors.black, // Usamos Colors.black como valor predeterminado
    this.size = 20,
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'MarkPro',
        fontWeight: FontWeight.w400,
        fontSize: size,
        color: color,
      ),
    );
  }
}

class Text_MarkProMedium extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const Text_MarkProMedium({
    Key? key, 
    required this.text,
    this.color = Colors.black, // Usamos Colors.black como valor predeterminado
    this.size = 20,
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'MarkPro',
        fontWeight: FontWeight.w500,
        fontSize: size,
        color: color,
      ),
    );
  }
}

class Text_MarkProBold extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const Text_MarkProBold({
    Key? key, 
    required this.text,
    this.color = Colors.black, // Usamos Colors.black como valor predeterminado
    this.size = 20,
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'MarkPro',
        fontWeight: FontWeight.w700,
        fontSize: size,
        color: color,
      ),
    );
  }
}

class Text_RobotoBold extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const Text_RobotoBold({
    Key? key, 
    required this.text,
    this.color = Colors.black, // Usamos Colors.black como valor predeterminado
    this.size = 20,
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: color,
      ),
    );
  }
}

class Text_RobotoMedium extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const Text_RobotoMedium({
    Key? key, 
    required this.text,
    this.color = Colors.black, // Usamos Colors.black como valor predeterminado
    this.size = 20,
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: size,
        color: color,
      ),
    );
  }
}

class Text_RobotoRegular extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const Text_RobotoRegular({
    Key? key, 
    required this.text,
    this.color = Colors.black, // Usamos Colors.black como valor predeterminado
    this.size = 20,
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: size,
        color: color,
      ),
    );
  }
}