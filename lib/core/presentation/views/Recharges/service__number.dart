import 'package:flutter/material.dart';
import 'package:fresh_start/colors.dart';
import 'package:fresh_start/core/presentation/widgets/app_bar.dart';
import 'package:fresh_start/core/presentation/widgets/subtitle.dart';

class ServiceNumber extends StatelessWidget {
  const ServiceNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: const AppBarWidget(titleAppBar: "Recarga"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 8.0),
                    Text(
                      "Numero de telefono",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                        labelText: "Ingrese el número de teléfono",
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      "Pagar con",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    DropdownButtonFormField<String>(
                      items: [
                        "FreshStart",
                        "BVA",
                        "Banco Azteca",
                        "Banamex"
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      onChanged: (String? value) {
                        // Handle dropdown value change
                      },
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      "Monto",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                        labelText: "Ingrese el monto",
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  _showBottomSheet(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1A2D4D),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Text("Pagar"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: const EdgeInsets.all(16.0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Pago realizado con éxito",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16.0),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('tu_imagen.png'), // Ruta de la imagen circular
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Pago",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "BrianJ AranaZ",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cuenta",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "5558 •••• •••• ••84",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1A2D4D),
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text("Salir"),
              ),
            ],
          ),
        );
      },
    );
  }
}
