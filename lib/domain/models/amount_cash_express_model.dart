import 'package:json_annotation/json_annotation.dart';

part 'amount_cash_express_model.g.dart';

@JsonSerializable()
class amountcash{
String pay;
String account;
int  clabeDestination;
String date;
String hour; 
String withdrawalKey;
int securityCode;
int amount;


amountcash({

  required this.pay,
  required this.account, 
  required this.clabeDestination,
  required this.date,
  required this.hour,
  required this.withdrawalKey,
  required this.securityCode,
  required this.amount
});

factory amountcash.amountJson(Map<String,dynamic>json) => _$AmountcashAmountJson(Json);
Map<String, dynamic> toJson() => _$AmountCashToJson(This);

}