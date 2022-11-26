import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final providerManager = ProviderManager();

class ProviderManager {
  WidgetRef? ref;

  void injectRef(WidgetRef ref) {
    this.ref = ref;
  }
}
