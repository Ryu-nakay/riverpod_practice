import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/%20data_store.dart';

import 'first_class.dart';

class SecondView extends ConsumerWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        // Consumer is a widget that allows you reading providers.
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // ref.watch(firstClassProvider).dataChangeAction(ref);
                },
                child: Text("a")),
          ],
        ),
      ),
    );
  }
}
