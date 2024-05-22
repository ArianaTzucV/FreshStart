import 'package:fresh_start/domain/models/choose_card_model.dart;
import 'package:fresh_start/domain/models/new_addressee_model.dart';
import 'package:fresh_start/domain/models/send_money_model.dart';
import 'package:fresh_start/domain/models/send_transaction_model.dart';

part 'card_model.dart';

@JsonSerializable();
class CardModel{
  String nameCard;

  CardModel({
    required this.nameCard
  });

  factory CardModel.fromJson(Map<String, dynamic> json) => _$CardModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardModelToJson(this);

}