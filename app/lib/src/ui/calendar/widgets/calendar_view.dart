import 'package:adhd_nemesis/src/domain/models/calendar/calendar.dart';
import 'package:adhd_nemesis/src/ui/calendar/view_models/calendar_viewmodel.dart';
import 'package:adhd_nemesis/src/utils/extensions/context_extensions.dart';
import 'package:adhd_nemesis/src/ui/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarView extends ConsumerStatefulWidget {
  const CalendarView({super.key});

  @override
  ConsumerState<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends ConsumerState<CalendarView> {
  late final CalendarViewModel calendarViewModel;

  @override
  void initState() {
    super.initState();
    calendarViewModel = CalendarViewModel(ref);
  }

  @override
  Widget build(BuildContext context) {
    final calendar = calendarViewModel.calendar;
    final firstDayOfMonth = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      1,
    );
    final cellsToSkip = firstDayOfMonth.weekday % 7;
    final daysInMonth = DateTime(
      firstDayOfMonth.year,
      firstDayOfMonth.month + 1,
      0,
    ).day;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            color: context.theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                childAspectRatio: 1.4,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: calendar.monthGridSize,
              itemBuilder: (context, index) =>
                  _buildCalendarCell(calendar, index, cellsToSkip, daysInMonth),
            ),
          ),
        ),
        Positioned(
          top: -8,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(5, (index) {
              return Container(
                width: 12,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

Widget _buildCalendarCell(
  Calendar calendar,
  int index,
  int cellsToSkip,
  int daysInMonth,
) {
  if (index < 7) {
    return Center(
      child: Text(
        calendar.timeStrings['days']![index].toUpperCase().substring(0, 3),
        style: TextStyle(
          color: AppTheme.lightTheme.colorScheme.onSurface,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  final int dayIndex = index - 7;
  final int day = dayIndex - cellsToSkip + 1;

  if (dayIndex < cellsToSkip || dayIndex >= cellsToSkip + daysInMonth) {
    return const SizedBox.shrink();
  }

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: day == calendar.currentDate.day
          ? Border.all(color: Colors.black, width: 2)
          : null,
    ),
    child: Center(
      child: Text(
        "$day",
        style: TextStyle(color: AppTheme.lightTheme.colorScheme.onSurface),
      ),
    ),
  );
}
