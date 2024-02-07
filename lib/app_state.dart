import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<bool> _navigationState = [false, false, false, false, false];
  List<bool> get navigationState => _navigationState;
  set navigationState(List<bool> value) {
    _navigationState = value;
  }

  void addToNavigationState(bool value) {
    _navigationState.add(value);
  }

  void removeFromNavigationState(bool value) {
    _navigationState.remove(value);
  }

  void removeAtIndexFromNavigationState(int index) {
    _navigationState.removeAt(index);
  }

  void updateNavigationStateAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    _navigationState[index] = updateFn(_navigationState[index]);
  }

  void insertAtIndexInNavigationState(int index, bool value) {
    _navigationState.insert(index, value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
