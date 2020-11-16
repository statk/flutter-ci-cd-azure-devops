import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:projects/Increase_event.dart';

class HomeBloc {
  HomeBloc(){
    _counterInStreamController.stream.listen(_counterInStreamHandler);
  }

  StreamController<Event> _counterInStreamController = StreamController<Event>();
  Sink<Event> get counterInSink => _counterInStreamController.sink;

  StreamController<int> _counterOutStreamController = StreamController<int>();
  Stream<int> get counterOutStream => _counterOutStreamController.stream;

  @visibleForTesting
  int counter = 0;


  void cleanup(){
    _counterInStreamController.close();
    _counterOutStreamController.close();
  }

  void _counterInStreamHandler(Event event) {
    if (event is IncreaseEvent) {
      counter ++;
      _counterOutStreamController.sink.add(counter);
    }
  }
}