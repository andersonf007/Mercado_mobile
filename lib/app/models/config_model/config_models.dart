import 'package:json_annotation/json_annotation.dart';

part 'config_models.g.dart';

@JsonSerializable()
class ConfigModels {
  final String? name;
  final String? userDataBase;
  final String? ipDataBase;
  final String? nameDataBase;
  final String? passwordDataBase;
  final String? dataBasePort;
  final String? host;
  final int? id;
  //final String? database;
  // final String? password;
  // final String? port;

  ConfigModels({
    this.name,
    this.dataBasePort,
    this.ipDataBase,
    this.nameDataBase,
    this.passwordDataBase,
    this.userDataBase,
    //  this.database,
    this.host,
    this.id,
    //  this.password,
    //  this.port,
  });

  factory ConfigModels.fromJson(Map<String, dynamic> json) =>
      _$ConfigModelsFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigModelsToJson(this);

  ConfigModels copywith({
    String? name,
    String? userDataBase,
    String? ipDataBase,
    String? nameDataBase,
    String? passwordDataBase,
    String? dataBasePort,
    String? host,
  }) {
    return ConfigModels(
      name: name ?? this.name,
      dataBasePort: dataBasePort ?? this.dataBasePort,
      ipDataBase: ipDataBase ?? this.ipDataBase,
      nameDataBase: nameDataBase ?? this.nameDataBase,
      passwordDataBase: passwordDataBase ?? this.passwordDataBase,
      userDataBase: userDataBase ?? this.userDataBase,
      host: host ?? this.host,
    );
  }
}
