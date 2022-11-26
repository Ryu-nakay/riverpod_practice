import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/static_data_store.dart';

// final dataStoreProvider = Provider<DataStore>((ref) => DataStore());

final staticDataStoreProvider =
    StateProvider<StaticDataStore>((ref) => StaticDataStore());

class StaticDataStoreNotifier extends StateNotifier<StaticDataStore> {
  StaticDataStoreNotifier() : super(const StaticDataStore());

  void increment() {
    state = state.copyWith(value: state.value + 1);
  }
}

final staticDataStoreNotifierProvider =
    StateNotifierProvider.autoDispose<StaticDataStoreNotifier, StaticDataStore>(
  (ref) => StaticDataStoreNotifier(),
);

class DataStoreManager {
  void countListner(WidgetRef ref) {
    ref.listen<StaticDataStore>(staticDataStoreNotifierProvider,
        (previous, next) {
      print("listen data store ${next.value}");
    });
  }
}

final dataStoreProvider =
    Provider<DataStoreManager>((ref) => DataStoreManager());

class DataStore {
  final dataStoreCounterProvider = StateProvider<int>((ref) => 0);
  final staticDataStoreValueProvider = Provider<StaticDataStore>((ref) {
    return ref.watch(staticDataStoreProvider);
  });

  void countListner(WidgetRef ref) {
    ref.listen<int>(dataStoreCounterProvider, (previous, next) {
      print("listen $previous $next");
    });

    ref.listen<StaticDataStore>(staticDataStoreNotifierProvider,
        (previous, next) {
      print("listen data store ${next.value}");
    });
  }

  void changeValue(WidgetRef ref) {
    // StaticDataStore().value++;
    ref.watch(staticDataStoreNotifierProvider.notifier).increment();
  }
}
