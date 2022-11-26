import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/%20data_store.dart';

final firstClassProvider = Provider<FirstClass>((ref) => FirstClass());

class FirstClass {
  final counterProvider = StateProvider<int>((ref) => 0);

  // void dataChangeAction(WidgetRef ref) {
  //   ref
  //       .read(ref.watch(dataStoreProvider).dataStoreCounterProvider.notifier)
  //       .state++;
  // }
}
