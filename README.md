<!--
 * @Author: archiecheng archiechengice@outlook.com
 * @Date: 2025-11-02 15:27:57
 * @LastEditors: archiecheng archiechengice@outlook.com
 * @LastEditTime: 2025-11-02 15:52:18
 * @FilePath: \Implicit Animations\implicit_animations_demo\README.md
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
# 🪄 Implicit Animations Demo

A Flutter showcase project demonstrating **Implicitly Animated Widgets**,  
which automatically animate property changes without requiring an `AnimationController`.

---

## 🎯 Overview

This project includes **five+ examples** of common implicit animations in Flutter.  
Each example is isolated in its own Dart file and can be navigated from the home screen.

| Widget | File | Description |
|---------|------|-------------|
| **AnimatedSwitcher** | `animated_switcher.dart` | Smoothly transitions between two widgets when `child` changes (e.g., number counter). |
| **AnimatedContainer** | `animated_container.dart` | Animates changes to size, color, border radius, and other visual properties. |
| **AnimatedOpacity** | `animated_opacity.dart` | Creates a fade-in/fade-out effect when opacity changes. |
| **AnimatedAlign** | `animated_align.dart` | Smoothly moves a child to a new alignment within its parent. |
| **AnimatedPadding** | `animated_padding.dart` | Animates the padding value, creating a "spacing" expansion/contraction effect. |


## 🧩 Project Structure
lib/
├── main.dart # Entry point and demo navigation menu
└── demos/
├── animated_switcher.dart
├── animated_container.dart
├── animated_opacity.dart
├── animated_align.dart
└── animated_padding.dart