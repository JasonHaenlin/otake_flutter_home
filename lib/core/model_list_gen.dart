import 'package:otake_flutter_home/models/base_model.dart';
import 'package:otake_flutter_home/models/entry_model.dart';

List<T> listMapper<T extends BaseModel>(List<Map<String, dynamic>> listMap) {
  if (T == Entry) {
    return listMap.map((item) => Entry.fromMap(item)).toList() as List<T>;
  }
  return List<T>();
}
