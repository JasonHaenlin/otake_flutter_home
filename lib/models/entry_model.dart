import 'package:flutter/material.dart';
import 'package:otake_flutter_home/models/base_model.dart';

class Entry extends BaseModel {
  final int id;
  final String entry;
  final String description;

  const Entry({
    @required this.id,
    @required this.entry,
    @required this.description,
  })  : assert(id != null),
        assert(entry != null),
        assert(description != null);

  Entry.fromMap(Map<String, dynamic> json)
      : id = json['id'],
        entry = json['entry'],
        description = json['description'];

  Map<String, dynamic> toMap() => {
        "id": id,
        "entry": entry,
        "description": description,
      };
}
