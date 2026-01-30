import 'package:flutter/material.dart';

import 'custom_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SliderDemo(),
    );
  }
}

class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double sliderValue = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Slider Package'),centerTitle: true,backgroundColor: Colors.blue,),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Value: ${sliderValue.toInt()}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            CustomSlider(
              value: sliderValue,
              min: 0,
              max: 100,
              divisions: 10,
              activeColor: Colors.green,
              inactiveColor: Colors.green.shade100,
              onChanged: (value) {
                setState(() => sliderValue = value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
