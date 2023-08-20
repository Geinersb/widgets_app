import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final colors= Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        foregroundColor: colors.primary,
      ),
body:  Center(
  child: Text('Valor: 10',style: Theme.of(context).textTheme.titleLarge)
),

floatingActionButton: FloatingActionButton(
  child: const Icon(Icons.add),
  onPressed: (){},
),


    );
  }
}
