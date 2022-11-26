import 'package:freezed_annotation/freezed_annotation.dart';

part 'static_data_store.freezed.dart';

@freezed
class StaticDataStore with _$StaticDataStore {
  const factory StaticDataStore({
    @Default(0) int value,
  }) = _StaticDataStore;
}
