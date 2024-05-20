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
