import 'package:adhd_nemesis/src/core/extensions/context_extensions.dart';
import 'package:adhd_nemesis/src/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: _buildCalendarGrid(cellsToSkip, daysInMonth),
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

Widget _buildCalendarGrid(int cellsToSkip, int daysInMonth) {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 7,
      childAspectRatio: 1.4,
    ),
    physics: const NeverScrollableScrollPhysics(),
    itemCount: 42,
    itemBuilder: (context, index) =>
        _buildCalendarCell(index, cellsToSkip, daysInMonth),
  );
}

Widget _buildCalendarCell(int index, int cellsToSkip, int daysInMonth) {
  if (index < 7) {
    return Center(
      child: Text(
        ["SU", "MO", "TU", "WE", "TH", "FR", "SA"][index],
        style: TextStyle(
          color: AppTheme.lightTheme.colorScheme.onSurface,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  final day = index - 7;

  if (day < cellsToSkip || day >= cellsToSkip + daysInMonth) {
    return const SizedBox.shrink();
  }

  return Center(
    child: Text(
      "${day - cellsToSkip + 1}",
      style: TextStyle(color: AppTheme.lightTheme.colorScheme.onSurface),
    ),
  );
}
