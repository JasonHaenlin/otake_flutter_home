import 'package:otake_flutter_home/core/model_list_gen.dart';
import 'package:otake_flutter_home/mocks/unit_mock.dart';
import 'package:otake_flutter_home/models/unit_model.dart';

class UnitService {
  List<Unit> _entries = [];

  Future<List<Unit>> getEntries() async {
    _entries = listMapper<Unit>(ENTRY_MOCK);
    await Future.delayed(const Duration(seconds: 1));
    return _entries;
  }
}

UnitService unitService = UnitService();
