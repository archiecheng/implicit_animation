# 🪄 Implicit Animations Demo

A Flutter showcase project demonstrating **Implicitly Animated Widgets**,  
which automatically animate property changes without requiring an `AnimationController`.

---

## 🎯 Overview

This project includes **five+ examples** of common implicit animations in Flutter.  
Each example is isolated in its own Dart file and can be navigated from the home screen.

| Widget | File | Description |
|---------|------|-------------|
| **AnimatedCrossFade** | `animated_crossfade.dart` | Smoothly transitions between two widgets with a fade and size animation when switching between `firstChild` and `secondChild`. |
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