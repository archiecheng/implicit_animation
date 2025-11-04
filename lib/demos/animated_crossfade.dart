/*
 * @Author: archiecheng archiechengice@outlook.com
 * @Date: 2025-11-03 22:41:20
 * @LastEditors: archiecheng archiechengice@outlook.com
 * @LastEditTime: 2025-11-03 22:46:52
 * @FilePath: \Implicit Animations\implicit_animations_demo\lib\demos\animated_crossfade.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

/// AnimatedCrossFade 隐式动画示例：
/// - 可在两个 Widget 之间平滑切换（淡入淡出 + 尺寸过渡）
/// - 常用于展示“展开/收起”、“显示/隐藏”等场景
class AnimatedCrossFadeDemo extends StatefulWidget {
  const AnimatedCrossFadeDemo({super.key});

  @override
  State<AnimatedCrossFadeDemo> createState() => _AnimatedCrossFadeDemoState();
}

class _AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
  bool _showFirst = true;

  void _toggle() => setState(() => _showFirst = !_showFirst);
  void _reset() => setState(() => _showFirst = true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedCrossFade Example')),
      body: Center(
        child: AnimatedCrossFade(
          duration: const Duration(milliseconds: 800),
          firstCurve: Curves.easeInOut,
          secondCurve: Curves.easeInOut,
          crossFadeState: _showFirst
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          firstChild: Container(
            key: const ValueKey(1),
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Hello 👋',
              style: TextStyle(color: Colors.white, fontSize: 26),
            ),
          ),
          secondChild: Container(
            key: const ValueKey(2),
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(100),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Goodbye 👋',
              style: TextStyle(color: Colors.white, fontSize: 24),
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
            label: const Text('Switch'),
            icon: const Icon(Icons.flip),
          ),
        ],
      ),
    );
  }
}