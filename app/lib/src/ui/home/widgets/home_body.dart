import 'package:adhd_nemesis/src/ui/calendar/widgets/calendar_frame.dart';
import 'package:adhd_nemesis/src/utils/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: context.padding,
        child: const _Calendar()
      ),
    );
  }
}

class _Calendar extends StatelessWidget {
  const _Calendar();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _MonthSelector(),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: context.height * 0.32),
          child: const CalendarFrame(),
        ),
      ],
    );
  }
}

class _MonthSelector extends StatelessWidget {
  const _MonthSelector();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left)),
          const Text(
            "July 2026",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right)),
        ],
      ),
    );
  }
}
