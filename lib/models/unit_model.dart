import 'package:flutter/material.dart';
import 'package:otake_flutter_home/models/base_model.dart';

const _kstatusToIcon = {
  'ok': {'value': Icons.check_circle_outline, 'color': Colors.green},
  'error': {'value': Icons.highlight_off, 'color': Colors.red},
  'warning': {'value': Icons.warning, 'color': Colors.deepOrangeAccent},
};

class Unit extends BaseModel {
  final int id;
  final String name;
  final String logo;
  final String message;
  final dynamic status;

  const Unit({
    @required this.id,
    @required this.name,
    @required this.message,
    @required this.logo,
    @required this.status,
  })  : assert(id != null),
        assert(name != null),
        assert(logo != null),
        assert(status != null),
        assert(message != null);

  Unit.fromMap(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        logo = json['logo'],
        status = _kstatusToIcon[json['status']],
        message = json['message'];

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "logo": logo,
        "status": status,
        "message": message,
      };
}
