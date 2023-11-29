import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_value.dart';

class CounterWidgetValueListenable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterValue>(context);
    print('Counter = ${counter.valueNotifier.value}');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            ValueListenableBuilder<int>(
              valueListenable: counter.valueNotifier,
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: const TextStyle(fontSize: 40),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counter.valueNotifier.value++;
                print('Increment Counter = ${counter.valueNotifier.value}');
              },
              child: const Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () {
                counter.valueNotifier.value--;
                print('Decrement Counter = ${counter.valueNotifier.value}');
              },
              child: const Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }
}
