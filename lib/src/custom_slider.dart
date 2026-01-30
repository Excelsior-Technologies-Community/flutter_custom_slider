import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final int? divisions;
  final Color activeColor;
  final Color inactiveColor;
  final ValueChanged<double> onChanged;
  final String? label;

  const CustomSlider({
    super.key,
    required this.value,
    required this.onChanged,
    this.min = 0,
    this.max = 100,
    this.divisions,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
    this.label,
  });

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  late double _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: widget.activeColor,
        inactiveTrackColor: widget.inactiveColor,
        thumbColor: widget.activeColor,
        valueIndicatorColor: widget.activeColor,
        valueIndicatorTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      child: Slider(
        value: _currentValue,
        min: widget.min,
        max: widget.max,
        divisions: widget.divisions,
        label: widget.label ?? _currentValue.round().toString(),
        onChanged: (value) {
          setState(() => _currentValue = value);
          widget.onChanged(value);
        },
      ),
    );
  }
}
