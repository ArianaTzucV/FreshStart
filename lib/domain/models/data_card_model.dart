import 'package:json_annotation/json_annotation.dart';

part 'data_card_model.g.dart';

@JsonSerializable()
class dataCard {
String cardNumbers;
double availableBalance;
String expiration;
int    cvv;
int amountData;

dataCard({
  required this.cardNumbers,
  required this.availableBalance,
  required this.expiration,
  required this.amountData,
  required this.cvv
});
factory dataCard.dataJson(Map<String,dynamic>json) => _$DatacardDataJson(Json);
Map<String, dynamic> toJson() => _$DatacardToJson(This);

}
