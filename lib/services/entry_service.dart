import 'package:otake_flutter_home/core/model_list_gen.dart';
import 'package:otake_flutter_home/mocks/entry_mock.dart';
import 'package:otake_flutter_home/models/entry_model.dart';

class EntryService {
  List<Entry> _entries = [];

  Future<List<Entry>> getEntries() async {
    _entries = listMapper<Entry>(ENTRY_MOCK);
    await Future.delayed(const Duration(seconds: 1));
    return _entries;
  }
}

EntryService entryService = EntryService();
