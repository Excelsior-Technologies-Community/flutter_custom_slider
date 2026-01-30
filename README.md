## Custom Slider 

A fully customizable Flutter slider widget with support for custom colors, range control, divisions, and value callbacks.  
Simple to use, lightweight, and perfect for both apps and public packages.

---

## ✨ Features

- 🎯 Custom active & inactive track colors
- 🔢 Min & max value control
- 📏 Optional divisions
- 🏷 Built-in label support
- 🔁 Real-time value change callback
- ⚡ Lightweight and easy to integrate

---

## Preview

![Screenshot_20260130_110221](https://github.com/user-attachments/assets/08fb29f7-196d-4ece-be5b-b3f04057949a)

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  custom_slider_ex: ^0.0.1
```
Then run:
```
flutter pub get
```
## 📥 Import
```
import 'package:custom_slider_ex/custom_slider.dart';
```

## 🚀 Basic Usage
```
double sliderValue = 30;

CustomSlider(
  value: sliderValue,
  min: 0,
  max: 100,
  divisions: 10,
  activeColor: Colors.green,
  inactiveColor: Colors.green.shade100,
  onChanged: (value) {
    setState(() {
      sliderValue = value;
    });
  },
)
```
## 📱 Example
```
CustomSlider(
  value: sliderValue,
  min: 10,
  max: 50,
  divisions: 8,
  activeColor: Colors.blue,
  inactiveColor: Colors.blue.shade100,
  label: sliderValue.toInt().toString(),
  onChanged: (value) {
    setState(() {
      sliderValue = value;
    });
  },
)
```
## 📄 License
```
MIT License

Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
