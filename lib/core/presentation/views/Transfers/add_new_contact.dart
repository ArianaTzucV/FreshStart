import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fresh_start/core/presentation/widgets/app_bar.dart';
import 'package:fresh_start/core/presentation/widgets/general_button.dart';
import 'package:fresh_start/core/presentation/widgets/subtitle.dart';

class AddNewContactView extends StatelessWidget {
  const AddNewContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(titleAppBar: 'Transacciones'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              const SubtitleWidget(subtitleText: 'Nuevo Destinatario'),
              const SizedBox(height: 16.0),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0XFFFAFAFA),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'CLABE',
                        style: TextStyle(
                          fontFamily: 'MarkPro',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '12345678',
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Entidad Bancaria',
                        style: TextStyle(
                          fontFamily: 'MarkPro',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'MazeBank',
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter
                        ],
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Nombre',
                        style: TextStyle(
                          fontFamily: 'MarkPro',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Nombre del Destinatario',
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter
                        ],
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Text(
                        'Apodo',
                        style: TextStyle(
                          fontFamily: 'MarkPro',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Agregar apodo (opcional)',
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter
                        ],
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 120.0),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: GeneralButtonWidget(text: 'Confirmar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
