import 'package:adhd_nemesis/src/core/extensions/context_extensions.dart';
import 'package:adhd_nemesis/src/widgets/home/calendar.dart';
import 'package:adhd_nemesis/src/widgets/home/month_selector.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.calendar_today_rounded),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.check_circle_outline),
            label: "Habits",
          ),
          NavigationDestination(icon: Icon(Icons.alarm), label: "Tools"),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: context.padding,
          child: Column(
            children: [
              const MonthSelector(),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.3,
                ),
                child: const Calendar(),
              ),
              const SizedBox(height: 14),

            ],
          ),
        ),
      ),
    );
  }
}
