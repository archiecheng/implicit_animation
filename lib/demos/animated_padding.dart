import 'package:flutter/material.dart';

class AnimatedPaddingDemo extends StatefulWidget {
  const AnimatedPaddingDemo({super.key});

  @override
  State<AnimatedPaddingDemo> createState() => _AnimatedPaddingDemoState();
}

class _AnimatedPaddingDemoState extends State<AnimatedPaddingDemo> {
  double _paddingValue = 20.0;

  void _toggle() {
    setState(() {
      _paddingValue = _paddingValue == 20.0 
      ? 100.0 
      : 20.0;
    });
  }

  void _reset() => setState(() => _paddingValue = 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedPadding Example')),
      body: Center(
        child: Container(
          color: Colors.grey.shade200,
          width: 300,
          height: 300,
          child: AnimatedPadding(
            padding: EdgeInsets.all(_paddingValue),
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOut,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Padding Animation',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.small(
            heroTag: 'reset',
            onPressed: _reset,
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(width: 12),
          FloatingActionButton.extended(
            heroTag: 'toggle',
            onPressed: _toggle,
            label: const Text('Switch Padding'),
            icon: const Icon(Icons.aspect_ratio),
          ),
        ],
      ),
    );
  }
}
