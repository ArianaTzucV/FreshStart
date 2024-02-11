import 'package:flutter/material.dart';

class InternationalTransactionView extends StatelessWidget{
  const InternationalTransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,20.0,0.0,0.0),
                child: Text(
                  "Cuenta de Origen",
                  style: TextStyle(
                    fontFamily: 'MarkPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
              SizedBox(height: 20.0,),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: DropdownButton<String>(items: [DropdownMenuItem<String>(value: 'Opcion 1',child: Text("HolaMundo"),)], onChanged: (String? value) {  },),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}