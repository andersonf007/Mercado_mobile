// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfigModels _$ConfigModelsFromJson(Map<String, dynamic> json) => ConfigModels(
      name: json['name'] as String?,
      dataBasePort: json['dataBasePort'] as String?,
      ipDataBase: json['ipDataBase'] as String?,
      nameDataBase: json['nameDataBase'] as String?,
      passwordDataBase: json['passwordDataBase'] as String?,
      userDataBase: json['userDataBase'] as String?,
      host: json['host'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$ConfigModelsToJson(ConfigModels instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userDataBase': instance.userDataBase,
      'ipDataBase': instance.ipDataBase,
      'nameDataBase': instance.nameDataBase,
      'passwordDataBase': instance.passwordDataBase,
      'dataBasePort': instance.dataBasePort,
      'host': instance.host,
      'id': instance.id,
    };
