import 'package:adhd_nemesis/src/domain/models/calendar/calendar.dart';
import 'package:adhd_nemesis/src/domain/models/calendar_event/calendar_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarViewModel extends ChangeNotifier {
  final WidgetRef ref;

  CalendarViewModel(this.ref);

  Calendar get calendar => ref.watch(calendarProvider);

  void selectDate(DateTime date) {
    ref.read(calendarProvider.notifier).selectDate(date);
    notifyListeners();
  }

  void createEvent(CalendarEvent event) {
    ref.read(calendarProvider.notifier).createEvent(event);
    notifyListeners();
  }

  void deleteEvent(int id) {
    ref.read(calendarProvider.notifier).deleteEvent(id);
    notifyListeners();
  }
}
