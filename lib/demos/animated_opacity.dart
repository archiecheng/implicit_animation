import 'package:flutter/material.dart';

/// Example of implicit animation using AnimatedOpacity:
/// - The widget automatically fades in and out when its opacity changes.
/// - No AnimationController required.
class AnimatedOpacityDemo extends StatefulWidget {
  const AnimatedOpacityDemo({super.key});

  @override
  State<AnimatedOpacityDemo> createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {
  double _opacity = 1.0;

  void _toggle() => setState(() => _opacity = _opacity == 1.0 ? 0.0 : 1.0);
  void _reset() => setState(() => _opacity = 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedOpacity Example')),
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
          opacity: _opacity,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Animated Opacity',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
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
            label: const Text('Switch Opacity'),
            icon: const Icon(Icons.opacity),
          ),
        ],
      ),
    );
  }
}
