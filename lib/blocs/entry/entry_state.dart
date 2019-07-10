import 'package:otake_flutter_home/blocs/bloc_base.dart';
import 'package:otake_flutter_home/models/unit_model.dart';
import 'package:otake_flutter_home/services/unit_service.dart';

enum EntryEvent { fetch }

class EntryState extends BlocBase<EntryEvent, List<Unit>> {
  EntryState(List<Unit> seed) : super(seed: seed, initEvent: EntryEvent.fetch);

  @override
  Stream<List<Unit>> eventToState(EntryEvent event, [data]) async* {
    switch (event) {
      case EntryEvent.fetch:
        yield await unitService.getEntries();
        break;
      default:
    }
  }
}
