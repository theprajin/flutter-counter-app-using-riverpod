import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './home.dart';

final countProvider = StateProvider<int>((ref) => 0);

void main() {
  runApp(const ProviderScope(child: Home()));
}
