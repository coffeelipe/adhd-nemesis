import 'package:adhd_nemesis/src/domain/models/calendar_event/calendar_event.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'calendar.g.dart';

class Calendar {
  final Map<EventType, List<CalendarEvent>> events;

  DateTime get currentDate => DateTime.now();

  Calendar copyWith({
    Map<EventType, List<CalendarEvent>>? events,
    DateTime? selectedDate,
  }) {
    return Calendar(
      events: events ?? this.events,
      selectedDate: selectedDate ?? currentDate,
    );
  }

  Calendar({
    this.events = const {EventType.reminder: [], EventType.schedule: []},
  });
}

@riverpod
class CalendarNotifier extends _$CalendarNotifier {
  @override
  Calendar build() => Calendar();

  void createEvent(CalendarEvent event) {
    state.events[event.type]!.add(event);
  }

  void deleteEvent(int id) {
    state.events.forEach(
      (key, value) => value.removeWhere((index) => index.id == id),
    );
  }
}
