import 'package:flutter/material.dart';

/// AnimatedContainer 隐式动画示例：
/// - 改变容器的大小、颜色、圆角等属性时，会自动平滑过渡
/// - 无需手动创建 AnimationController
class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool _toggled = false;

  void _toggle() => setState(() => _toggled = !_toggled);
  void _reset() => setState(() => _toggled = false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainer Example')),
      body: Center(
        child: AnimatedContainer(
          width: _toggled ? 240 : 120,
          height: _toggled ? 240 : 120,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOutCubic,
          decoration: BoxDecoration(
            color: _toggled ? Colors.teal : Colors.orange,
            borderRadius: BorderRadius.circular(_toggled ? 60 : 8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: _toggled ? 20 : 6,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          alignment: Alignment.center,
          child: const Text(
            'Tap →',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.small(
            onPressed: _reset,
            heroTag: 'reset',
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(width: 12),
          FloatingActionButton.extended(
            onPressed: _toggle,
            heroTag: 'toggle',
            label: const Text('Switch Animation'),
            icon: const Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}
