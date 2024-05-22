import 'dart:ffi';
import 'package:json_annotation/json_annotation.dart';

part 'form_model.g.dart';

@JsonSerializable()
class AccountStatusModel {
  String myAccount;
  Double availableBalance;
  
  AccountStatusModel({
    required this.myAccount,
    required this.availableBalance
  });

  factory AccountStatusModel.fromJson(Map<String, dynamic> json) => _$AccountStatusModel(json);

  Map<String, dynamic> toJson() => _$AccountStatusModel(this);
}