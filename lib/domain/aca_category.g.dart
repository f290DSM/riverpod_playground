// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aca_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcaCategory _$AcaCategoryFromJson(Map<String, dynamic> json) => AcaCategory(
      id: (json['id'] as num?)?.toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$AcaCategoryToJson(AcaCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
    };
