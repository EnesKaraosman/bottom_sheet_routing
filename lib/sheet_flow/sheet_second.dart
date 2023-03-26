import 'package:flutter/material.dart';

class SheetSecond extends StatelessWidget {
  const SheetSecond({
    super.key,
    this.onNext,
  });

  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sheet Second')),
      body: Center(
        child: ElevatedButton(
          onPressed: onNext,
          child: const Text('Dismiss Sheet'),
        ),
      ),
    );
  }
}
