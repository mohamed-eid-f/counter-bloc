import 'package:flutter/material.dart';

import '../widgets/app_fab.dart';
import '../widgets/app_counter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        centerTitle: true,
      ),
      body: const AppCounter(),
      floatingActionButton: const AppFAB(),
    );
  }
}
