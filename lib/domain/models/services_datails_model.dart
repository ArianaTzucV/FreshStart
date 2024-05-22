import 'package:json_annotation/json_annotation.dart';

part 'form_model.g.dart';

@JsonSerializable()
class ServicesModel {
  String nameService;
  String image;



  ServicesModel({
    required this.nameService,
    required this.image,
  });

  factory ServicesModel.fromJson(Map<String, dynamic> json) => _$ServicesModelFromJson(json);

  Map<String, dynamic>  toJson() => _$ServicesModelToJson(this);
}