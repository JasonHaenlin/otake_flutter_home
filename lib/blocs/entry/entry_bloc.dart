import 'package:otake_flutter_home/blocs/entry/entry_state.dart';

class EntryBloc {
  EntryState _entry;

  EntryBloc() : _entry = EntryState(null);

  EntryState get entryBloc => _entry;
}
