import 'dart:async';

import 'counter_event.dart';

class CounterBloc {
  int _counter = 0;

//  input (event)
  final _counterEventController = StreamController<CounterEvent>();
  CounterBloc() {
    _counterEventController.stream.listen(_mapEventToState);
  }

//  ui called (add)
  Sink<CounterEvent> get counterEventSink => _counterEventController.sink;

//  connect the event with the state
  void _mapEventToState(CounterEvent event) {
    if (event is IncrementEvent)
      _counter++;
    else
      _counter--;
//   easy
//    _inCounter.add(_counter);
//    add to the state (not to the event)
    _counterStateController.sink.add(_counter);
  }

//---------------------------------------------------------------
  //  output (state)
  final _counterStateController = StreamController<int>();
  //   easy
//  StreamSink<int> get _inCounter {
//    return _counterStateController.sink;
//  }
  Stream<int> get counter => _counterStateController.stream;

  void dispose() {
    _counterStateController.close();
    _counterEventController.close();
  }
}
