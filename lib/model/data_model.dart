import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

class BaseModel {
  int id;
  String desc;

  BaseModel({this.id, this.desc});
}


@JsonSerializable()
class Parent extends BaseModel {
  List<Child> children;

  Parent({int id, String desc, this.children}) : super(id: id, desc: desc);
  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
  Map<String, dynamic> toJson() => _$ParentToJson(this);

  @override
  String toString() {
    return "Parent: id: $id, child count: ${children.length}, desc:${children[1].desc} !!!";
  }


}

@JsonSerializable()
class Child extends BaseModel {
  int parentId;

  Child({int id, String desc, this.parentId}) : super(id: id, desc: desc);
  factory Child.fromJson(Map<String, dynamic> json) => _$ChildFromJson(json);
  Map<String, dynamic> toJson() => _$ChildToJson(this);
}