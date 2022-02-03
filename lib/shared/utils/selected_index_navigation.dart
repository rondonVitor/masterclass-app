import 'package:flutter/material.dart';

class SelectedIndexNavigation extends ValueNotifier<int> {
  SelectedIndexNavigation() : super(0);

  set setSelectedIndex(int index) {
    value = index;
  }
}
