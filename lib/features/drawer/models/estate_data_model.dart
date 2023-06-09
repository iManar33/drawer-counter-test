import 'package:freezed_annotation/freezed_annotation.dart';

part 'estate_data_model.freezed.dart';
part 'estate_data_model.g.dart';

@freezed
class EstateDataModel with _$EstateDataModel {
  const factory EstateDataModel({
    required String id,
    String? appName,
    String? appColor,
    String? image,
    required int count,
  }) = _EstateDataModel;

  factory EstateDataModel.fromJson(Map<String, dynamic> json) =>
      _$EstateDataModelFromJson(json);
}
