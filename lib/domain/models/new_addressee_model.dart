import 'package:fresh_start/domain/models/choose_card_model.dart;
import 'package:fresh_start/domain/models/new_addressee_model.dart';
import 'package:fresh_start/domain/models/send_money_model.dart';
import 'package:fresh_start/domain/models/send_transaction_model.dart';

part 'new_addressee_model.dart';

@JsonSerializable();
class NewAddresseeModel{
  String adresseeDetails;

  NewAddresseeModel({
    required this.adresseeDetails
  });

  factory NewAddresseeModel.fromJson(Map<String, dynamic> json) => _$NewAddresseeModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewAddresseeModelToJson(this);
}