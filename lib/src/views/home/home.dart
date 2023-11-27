import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: const Center(
        child: Text('HomeView'),
      ),
    );
  }
}
