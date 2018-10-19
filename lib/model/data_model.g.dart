// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parent _$ParentFromJson(Map<String, dynamic> json) {
  return Parent(
      id: json['id'] as int,
      desc: json['desc'] as String,
      children: (json['children'] as List)
          ?.map((e) =>
              e == null ? null : Child.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ParentToJson(Parent instance) => <String, dynamic>{
      'id': instance.id,
      'desc': instance.desc,
      'children': instance.children
    };

Child _$ChildFromJson(Map<String, dynamic> json) {
  return Child(
      id: json['id'] as int,
      desc: json['desc'] as String,
      parentId: json['parentId'] as int);
}

Map<String, dynamic> _$ChildToJson(Child instance) => <String, dynamic>{
      'id': instance.id,
      'desc': instance.desc,
      'parentId': instance.parentId
    };
