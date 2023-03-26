import 'package:flutter/material.dart';

class SheetRoot extends StatelessWidget {
  const SheetRoot({
    super.key,
    this.onNext,
  });

  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sheet Root')),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: onNext,
              child: const Text('Navigate to 2nd content'),
            ),
          ),
        ],
      ),
    );
  }
}
