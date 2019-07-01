abstract class BlocBase<Event, Type> {
  Event _currentEvent;

  void dispose();

  void dispatch(Event event) {
    _currentEvent = event;
    eventToState(event);
  }

  void eventToState(Event event);

  Event get currentEvent => _currentEvent;
}
