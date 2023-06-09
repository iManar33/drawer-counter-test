// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estate_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EstateDataModel _$$_EstateDataModelFromJson(Map<String, dynamic> json) =>
    _$_EstateDataModel(
      id: json['id'] as String,
      appName: json['appName'] as String?,
      appColor: json['appColor'] as String?,
      image: json['image'] as String?,
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_EstateDataModelToJson(_$_EstateDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appName': instance.appName,
      'appColor': instance.appColor,
      'image': instance.image,
      'count': instance.count,
    };
