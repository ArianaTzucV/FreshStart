import 'dart:ffi';
import 'package:fresh_start/domain/models/choose_card_model.dart;
import 'package:fresh_start/domain/models/new_addressee_model.dart';
import 'package:fresh_start/domain/models/send_money_model.dart';
import 'package:fresh_start/domain/models/send_transaction_model.dart';

part 'send_money_model.dart';

@JsonSerializable();
class SendMoneyModel{
  String nameCard;
  String adresseeName;
  Int clabe;
  Double amount;

  SendMoneyModel({
    required this.nameCard,
    required this.adresseeName,
    required this.clabe,
    required this.amount,
  });

  factory SendMoneyModel.fromJson(Map<String, dynamic> json) => _$SendMoneyModelFromJson(json);

  Map<String, dynamic> toJson() => _$SendMoneyModelToJson(this);
}