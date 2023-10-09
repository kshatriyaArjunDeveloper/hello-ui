import 'package:flutter/material.dart';
import 'package:hello/hello.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello UI'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container_(
          allPadding: 12,
          topLeftRadius: 8,
          bottomRightRadius: 8,
          color: Theme.of(context).colorScheme.inversePrimary,
          child: const Text('Custom container').onClick(() {
            print('DEBUG I am working');
          }),
        ),
      ),
    );
  }
}
