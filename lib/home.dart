import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_counter/main.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(countProvider);
    return MaterialApp(
      title: 'riverpod counter',
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Riverpod Counter')),
        ),
        body: Center(
          child: Text(
            '$count',
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        floatingActionButton: Container(
          padding: const EdgeInsets.only(left: 20, right: 16),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  if (count >= 1) {
                    ref.read(countProvider.notifier).state--;
                  }
                },
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () {
                  ref.read(countProvider.notifier).state++;
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
