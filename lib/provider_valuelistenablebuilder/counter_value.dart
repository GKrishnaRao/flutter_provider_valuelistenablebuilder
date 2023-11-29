import 'package:flutter/foundation.dart';

class CounterValue extends ChangeNotifier{
  final ValueNotifier<int> valueNotifier = ValueNotifier<int>(0);
}