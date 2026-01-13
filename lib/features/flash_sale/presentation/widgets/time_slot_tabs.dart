import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../data/repositories/product_repository.dart';

class TimeSlotTabs extends StatefulWidget {
  const TimeSlotTabs({
    super.key,
    required this.activities,
    required this.selectedActivityId,
    required this.onActivitySelected,
  });

  final List<FlashSaleActivity> activities;
  final String selectedActivityId;
  final ValueChanged<FlashSaleActivity> onActivitySelected;

  @override
  State<TimeSlotTabs> createState() => _TimeSlotTabsState();
}

class _TimeSlotTabsState extends State<TimeSlotTabs> {
  Timer? _timer;
  DateTime _now = DateTime.now();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          _now = DateTime.now();
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  DateTime? _parseTime(String timeStr) {
    DateTime? date = DateTime.tryParse(timeStr);
    if (date == null) {
      final double? millis = double.tryParse(timeStr);
      if (millis != null) {
        date = DateTime.fromMillisecondsSinceEpoch(millis.toInt());
      }
    }
    return date;
  }

  String _formatTime(DateTime? date) {
    if (date == null) return '';

    final now = DateTime.now();
    final isToday =
        date.year == now.year && date.month == now.month && date.day == now.day;

    if (isToday) {
      return DateFormat('HH:mm').format(date);
    }
    return DateFormat('EEE. HH:mm').format(date);
  }

  Duration? _getCountdownDuration(DateTime? end) {
    if (end == null) return null;
    final diff = end.difference(_now);
    if (diff.isNegative) return Duration.zero;
    return diff;
  }

  Widget _buildTimeBlock(String value) {
    return Container(
      width: 20,
      height: 20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFFD32F2F),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        value,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          height: 1.1,
        ),
      ),
    );
  }

  Widget _buildSeparator() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: Text(
        ':',
        style: TextStyle(
          color: Color(0xFFD32F2F),
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70, // Fixed height for the tab bar
      color: const Color(0xFFB71C1C), // Match bottom of header
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: widget.activities.length,
        itemBuilder: (context, index) {
          final activity = widget.activities[index];
          final isSelected = activity.id == widget.selectedActivityId;

          final start = _parseTime(activity.startTime);
          final end = _parseTime(activity.endTime);

          // Determine status by time if possible, fallback to status code
          final bool isOngoing;
          if (start != null && end != null) {
            isOngoing = _now.isAfter(start) && _now.isBefore(end);
          } else {
            isOngoing = activity.status == 2;
          }

          final timeDisplay = _formatTime(start);

          return GestureDetector(
            onTap: () => widget.onActivitySelected(activity),
            child: Container(
              width: 100,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : Colors.transparent,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(8),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (isSelected && isOngoing) ...[
                    // Countdown Blocks
                    Builder(
                      builder: (context) {
                        final duration =
                            _getCountdownDuration(end) ?? Duration.zero;
                        final h = duration.inHours.toString().padLeft(2, '0');
                        final m = (duration.inMinutes % 60).toString().padLeft(
                          2,
                          '0',
                        );
                        final s = (duration.inSeconds % 60).toString().padLeft(
                          2,
                          '0',
                        );

                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildTimeBlock(h),
                            _buildSeparator(),
                            _buildTimeBlock(m),
                            _buildSeparator(),
                            _buildTimeBlock(s),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Hot Deal',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      maxLines: 1,
                    ),
                  ] else if (isSelected) ...[
                    // Selected but not ongoing (e.g. coming soon selected)
                    Text(
                      timeDisplay,
                      style: const TextStyle(
                        color: Color(0xFFD32F2F),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Selected',
                      style: TextStyle(color: Color(0xFFD32F2F), fontSize: 10),
                    ),
                  ] else ...[
                    // Unselected
                    Text(
                      timeDisplay,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      isOngoing ? 'On Going' : 'Coming Soon',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.8),
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
