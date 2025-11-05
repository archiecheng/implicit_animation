import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  const AnimatedAlignDemo({super.key});

  @override
  State<AnimatedAlignDemo> createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  Alignment _alignment = Alignment.topLeft;

  void _toggle() {
    setState(() {
      _alignment =
          _alignment == Alignment.topLeft 
          ? Alignment.bottomRight 
          : Alignment.topLeft;
    });
  }

  void _reset() => setState(() => _alignment = Alignment.topLeft);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedAlign Example')),
      body: Container(
        color: Colors.grey.shade200,
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOutCubic,
          alignment: _alignment,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.center,
            child: const Text(
              '💗',
              style: TextStyle(fontSize: 32),
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
            label: const Text('Switch Position'),
            icon: const Icon(Icons.swap_horiz),
          ),
        ],
      ),
    );
  }
}
