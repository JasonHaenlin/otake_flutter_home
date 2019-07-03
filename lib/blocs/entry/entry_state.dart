import 'package:otake_flutter_home/blocs/bloc_base.dart';
import 'package:otake_flutter_home/models/entry_model.dart';
import 'package:otake_flutter_home/services/entry_service.dart';

enum EntryEvent { fetch }

class EntryState extends BlocBase<EntryEvent, List<Entry>> {
  EntryState(List<Entry> seed) : super(seed: seed, initEvent: EntryEvent.fetch);

  @override
  Stream<List<Entry>> eventToState(EntryEvent event) async* {
    switch (event) {
      case EntryEvent.fetch:
        List<Entry> entries = await entryService.getEntries();
        yield entries;
        break;
      default:
    }
  }
}
