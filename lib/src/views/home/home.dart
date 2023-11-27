import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(
        child: Text('HomeView'),
      ),
    );
  }
}
