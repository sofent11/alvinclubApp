import 'dart:async';

import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';

class FlashSaleTimer extends StatefulWidget {
  const FlashSaleTimer({super.key, required this.endTime});

  final DateTime endTime;

  @override
  State<FlashSaleTimer> createState() => _FlashSaleTimerState();
}

class _FlashSaleTimerState extends State<FlashSaleTimer> {
  Timer? _timer;
  Duration _timeLeft = Duration.zero;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void didUpdateWidget(FlashSaleTimer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.endTime != widget.endTime) {
      _startTimer();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();
    _updateTime();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateTime();
    });
  }

  void _updateTime() {
    final now = DateTime.now();
    if (mounted) {
      setState(() {
        _timeLeft = widget.endTime.isAfter(now)
            ? widget.endTime.difference(now)
            : Duration.zero;
      });
    }
  }

  String _formatDuration(Duration d) {
    final hours = d.inHours.toString().padLeft(2, '0');
    final minutes = (d.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (d.inSeconds % 60).toString().padLeft(2, '0');
    return '$hours:$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    // Customize your look here. Currently a simple row.
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: colors.primary, // Or danger depending on theme
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            _formatDuration(_timeLeft),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
              fontFeatures: [FontFeature.tabularFigures()],
            ),
          ),
        ),
      ],
    );
  }
}
