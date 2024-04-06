import 'package:flutter/material.dart';
import 'package:fresh_start/styles.dart';
import 'package:fresh_start/core/presentation/widgets/app_bar.dart';
import 'package:fresh_start/core/presentation/widgets/subtitle.dart';

class RechargesView extends StatelessWidget {
  const RechargesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarWidget(titleAppBar: "Recargas"),
        body: ListView(
          children: [
            const SubtitleWidget(subtitleText: "Selecciona la compañia"),
            //Abajo de este comentario construyes todo lo que falta

            buildResponsiveButtonRow(context,[
              buildRoundedButton(context,'assets/images/Telcel_logo.svg.png', Color(0xFFFAFAFA), () {
                print('Clic en Compañía 1');
              }),
              buildRoundedButton(context,'assets/images/Movistar.png', Color(0xFFFAFAFA), () {
                print('Clic en Compañía 2');
              }),
              buildRoundedButton(context,'assets/images/AT&T.png', Color(0xFFFAFAFA), () {
                print('Clic en Compañía 3');
              }),
            ]),
            SizedBox(height: 15),
            buildResponsiveButtonRow(context,[
              buildRoundedButton(context,'assets/images/Unefon.png', Color(0xFFFAFAFA), () {
                print('Clic en Compañía 4');
              }),
              buildRoundedButton(context,'assets/images/Virgin.png', Color(0xFFFAFAFA), () {
                print('Clic en Compañía 5');
              }),
              buildRoundedButton(context,'assets/images/Vodafone.png', Color(0xFFFAFAFA), () {
                print('Clic en Compañía 6');
              }),
            ]),
          ],
        ));
  }
}

   Widget buildResponsiveButtonRow(BuildContext context, List<Widget> buttons) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      children: buttons,
    );
  }

  Widget buildRoundedButton(BuildContext context, String imagePath, Color color, VoidCallback onPressed) {
    double buttonWidth = MediaQuery.of(context).size.width / 3.4;
    double buttonHeight = buttonWidth * .6;

    return Container(
      width: buttonWidth,
      height: buttonHeight,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: Image.asset(
            imagePath,
            width: buttonWidth * 0.6, // Ajusta el tamaño de la imagen según tus preferencias
            height: buttonWidth * 0.6,
          ),
        ),
      ),
    );
  }


class SubtitleWidget extends StatelessWidget {
  final String subtitleText;

  const SubtitleWidget({Key? key, required this.subtitleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        subtitleText,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}


// Widget buildButtonRow(List<Widget> buttons) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: buttons,
//   );
// }

// Widget buildRoundedButton(
//     String imagePath, Color color, VoidCallback onPressed) {
//   return Container(
//     width: 250,
//     height: 250,
//     decoration: BoxDecoration(
//       color: color,
//       borderRadius: BorderRadius.circular(8),
//     ),
//     child: TextButton(
//       onPressed: onPressed,
//       child: Center(
//         child: Image.asset(
//           imagePath,
//           width: 250,
//           height: 250,
//         ),
//       ),
//     ),
//   );
// }

// class SubtitleWidget extends StatelessWidget {
//   final String subtitleText;

//   const SubtitleWidget({Key? key, required this.subtitleText})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(5.0),
//       child: Text(
//         subtitleText,
//         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }
