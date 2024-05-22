import 'package:fresh_start/domain/models/choose_card_model.dart;
import 'package:fresh_start/domain/models/new_addressee_model.dart';
import 'package:fresh_start/domain/models/send_money_model.dart';
import 'package:fresh_start/domain/models/send_transaction_model.dart';

part 'send_transaction_model.dart';

@JsonSerializable();
class SendTransactionModel{
  String clabe;
  String bankingEntity;
  String adresseeName;
  String adresseeNickname;

  SendTransactionModel({
    required this.clabe,
    required this.bankingEntity,
    required this.adresseeName,
    required this.adresseeNickname,
  });

  factory SendTransactionModel.fromJson(Map<String, dynamic> json) => _$SendTransactionModelFromJson(json);

  Map<String, dynamic> toJson() => _$SendTransactionModelToJson(this);
}