import 'package:adhd_nemesis/src/ui/home/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: const HomeBody(),
    );
  }
}
