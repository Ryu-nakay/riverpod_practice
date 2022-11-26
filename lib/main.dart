import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/%20data_store.dart';
import 'package:riverpod_practice/first_class.dart';
import 'package:riverpod_practice/second_view.dart';

// A Counter example implemented with riverpod

void main() {
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(home: Home());
  }
}

/// Providers are declared globally and specify how to create a state
final counterProvider = StateProvider((ref) => 0);

final filteredTodoListProvider = Provider<int>((ref) {
  final counter = ref.watch(counterProvider);

  return counter + 1;
});

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(dataStoreProvider).countListner(ref);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        // Consumer is a widget that allows you reading providers.
        child: Column(
          children: [
            Text('${ref.watch(counterProvider)}'),
            Text('${ref.watch(filteredTodoListProvider)}'),
            // Text(
            // '${ref.watch(ref.read(dataStoreProvider).dataStoreCounterProvider)}'),
            Text('static ${ref.watch(staticDataStoreNotifierProvider).value}'),
            ElevatedButton(
                onPressed: () {
                  // ref.watch(firstClassProvider).dataChangeAction(ref);
                },
                child: Text("a")),
            ElevatedButton(
                onPressed: () {
                  ref
                      .watch(staticDataStoreNotifierProvider.notifier)
                      .increment();
                },
                child: Text("static")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondView()));
                },
                child: Text("遷移")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // The read method is a utility to read a provider without listening to it
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
