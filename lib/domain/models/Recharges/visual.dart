class Recarga {
  final String numeroTelefono;
  final String metodoPago;
  final String tipoRecarga;
  final double monto;

  Recarga({
    required this.numeroTelefono,
    required this.metodoPago,
    required this.tipoRecarga,
    required this.monto,
  });
}

class RecargaModel {
  double _saldo = 0.0;
  final List<Recarga> _recargas = [];

  double get saldo => _saldo;
  List<Recarga> get recargas => List.unmodifiable(_recargas);

  void recargar(Recarga recarga) {
    if (recarga.monto > 0) {
      _saldo += recarga.monto;
      _recargas.add(recarga);
    }
  }

  void gastar(double monto) {
    if (monto > 0 && monto <= _saldo) {
      _saldo -= monto;
    }
  }
}

import 'package:flutter/material.dart';
import 'recarga_model.dart'; // Asegúrate de importar el modelo

class RecargaView extends StatefulWidget {
  @override
  _RecargaViewState createState() => _RecargaViewState();
}

class _RecargaViewState extends State<RecargaView> {
  final RecargaModel _model = RecargaModel();
  final TextEditingController _numeroController = TextEditingController();
  final TextEditingController _montoController = TextEditingController();
  String _metodoPago = 'Tarjeta de Crédito';
  String _tipoRecarga = 'Datos';

  void _recargarSaldo() {
    final String numeroTelefono = _numeroController.text;
    final double monto = double.tryParse(_montoController.text) ?? 0.0;

    if (numeroTelefono.isNotEmpty && monto > 0) {
      final recarga = Recarga(
        numeroTelefono: numeroTelefono,
        metodoPago: _metodoPago,
        tipoRecarga: _tipoRecarga,
        monto: monto,
      );
      setState(() {
        _model.recargar(recarga);
      });
      _numeroController.clear();
      _montoController.clear();
    }
  }

  void _gastarSaldo() {
    final double monto = double.tryParse(_montoController.text) ?? 0.0;
    setState(() {
      _model.gastar(monto);
    });
    _montoController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistema de Recargas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'Saldo Actual: \$${_model.saldo.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _numeroController,
              decoration: InputDecoration(
                labelText: 'Número de Teléfono',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: _metodoPago,
              onChanged: (String? newValue) {
                setState(() {
                  _metodoPago = newValue!;
                });
              },
              items: <String>['Tarjeta de Crédito', 'Paypal', 'Apple Pay']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: _tipoRecarga,
              onChanged: (String? newValue) {
                setState(() {
                  _tipoRecarga = newValue!;
                });
              },
              items: <String>['Datos', 'Llamadas', 'Mixto']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _montoController,
              decoration: InputDecoration(
                labelText: 'Monto',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _recargarSaldo,
              child: Text('Recargar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _gastarSaldo,
              child: Text('Gastar Saldo'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _model.recargas.length,
                itemBuilder: (context, index) {
                  final recarga = _model.recargas[index];
                  return ListTile(
                    title: Text('Teléfono: ${recarga.numeroTelefono}'),
                    subtitle: Text(
                        'Método: ${recarga.metodoPago}, Tipo: ${recarga.tipoRecarga}, Monto: \$${recarga.monto.toStringAsFixed(2)}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

