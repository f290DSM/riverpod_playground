import 'package:json_annotation/json_annotation.dart';

part 'aca_category.g.dart';

@JsonSerializable()
class AcaCategory {
  int? id;
  String? description;

  AcaCategory({
    this.id,
    this.description,
  });

  factory AcaCategory.fromJson(Map<String, dynamic> json) =>
      _$AcaCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$AcaCategoryToJson(this);

  @override
  String toString() => 'AcaCategory(id: $id, description: $description)';
}
