/*
 * @Author: archiecheng archiechengice@outlook.com
 * @Date: 2025-11-02 15:27:56
 * @LastEditors: archiecheng archiechengice@outlook.com
 * @LastEditTime: 2025-11-03 22:43:04
 * @FilePath: \Implicit Animations\implicit_animations_demo\lib\main.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'demos/animated_crossfade.dart';
import 'demos/animated_container.dart';
import 'demos/animated_opacity.dart';
import 'demos/animated_align.dart';
import 'demos/animated_padding.dart';
void main() {
  runApp(const ImplicitAnimationsDemoApp());
}

class ImplicitAnimationsDemoApp extends StatelessWidget {
  const ImplicitAnimationsDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Implicit Animations Demo',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const HomePage(),
    );
  }
}

class DemoItem {
  final String title;
  final WidgetBuilder builder;
  const DemoItem(this.title, this.builder);
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final demos = <DemoItem>[
      DemoItem('AnimatedContainer', (ctx) => const AnimatedContainerDemo()),
      DemoItem('AnimatedOpacity', (ctx) => const AnimatedOpacityDemo()),
      DemoItem('AnimatedAlign', (ctx) => const AnimatedAlignDemo()),
      DemoItem('AnimatedPadding', (ctx) => const AnimatedPaddingDemo()),
      DemoItem('AnimatedCrossFade', (ctx) => const AnimatedCrossFadeDemo()),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Implicit Animations — 5 Examples')),
      body: ListView.separated(
        itemCount: demos.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final item = demos[index];
          return ListTile(
            title: Text(item.title),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: item.builder),
            ),
          );
        },
      ),
    );
  }
}
