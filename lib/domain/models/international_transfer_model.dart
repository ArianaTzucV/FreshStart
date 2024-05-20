import 'dart:ffi';

import 'package:fresh_start/domain/models/amount_model.dart';
import 'package:fresh_start/domain/models/bank_details_model.dart';

class InternationalTransferModel{
  Int transactionId;
  DateTime transactionDate;
  BankDeatilModel sender;
  BankDeatilModel recipient;
  AmountModel amount;
  Float exchangeRate;
  AmountModel fee;
  String? concept;

  InternationalTransferModel({
    required this.transactionId,
    required this.transactionDate,
    required this.sender,
    required this.recipient,
    required this.amount,
    required this.exchangeRate,
    required this.fee,
    this.concept
  });
}