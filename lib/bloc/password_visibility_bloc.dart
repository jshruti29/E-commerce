import 'dart:async';

import 'package:flutter/material.dart';

enum ContainVisibility { show, hide }

class IconVisibility {
  bool isVisible = false;
  final _stateStreamController = StreamController<bool>();

  StreamSink<bool> get userSink => _stateStreamController.sink;

  Stream<bool> get userStream => _stateStreamController.stream;

  final _eventStreamController = StreamController<ContainVisibility>();

  StreamSink<ContainVisibility> get eventSink => _eventStreamController.sink;

  Stream<ContainVisibility> get eventStream => _eventStreamController.stream;

  IconVisibility() {
    eventStream.listen((event) {
      event == ContainVisibility.show ? isVisible = true : isVisible = false;
      userSink.add(isVisible);
    });
  }
}
