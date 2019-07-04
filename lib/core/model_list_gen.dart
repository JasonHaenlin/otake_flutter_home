import 'package:otake_flutter_home/models/base_model.dart';
import 'package:otake_flutter_home/models/unit_model.dart';

List<T> listMapper<T extends BaseModel>(List<Map<String, dynamic>> listMap) {
  if (T == Unit) {
    return listMap.map((item) => Unit.fromMap(item)).toList() as List<T>;
  }
  return List<T>();
}
