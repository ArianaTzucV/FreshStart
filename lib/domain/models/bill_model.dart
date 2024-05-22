import 'package:json_annotation/json_annotation.dart';

part 'form_model.g.dart';

@JsonSerializable()
class BillModel {
  String billData;
  String voucher;
  String youPaidWith;

  BillModel ({
    required this.billData,
    required this.voucher,
    required this.youPaidWith
  });

  factory BillModel.fromJson(Map<String, dynamic> json) => _$BillModel(json);

  Map<String, dynamic> toJson() => _$BillModel(this);
}