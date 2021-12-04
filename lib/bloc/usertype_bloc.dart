import 'dart:async';

import 'package:flutter/material.dart';

enum UserAction { customer, vendor }

class UserTypeChoose {
  int index = 0;
  final _stateStreamController = StreamController<int>();

  StreamSink<int> get userSink => _stateStreamController.sink;

  Stream<int> get userStream => _stateStreamController.stream;

  final _eventStreamController = StreamController<UserAction>();

  StreamSink<UserAction> get eventSink => _eventStreamController.sink;

  Stream<UserAction> get eventStream => _eventStreamController.stream;

  UserTypeChoose() {
    eventStream.listen((event) {
      event == UserAction.customer ? index = 0 : index = 1;
      userSink.add(index);
    });
  }
}
