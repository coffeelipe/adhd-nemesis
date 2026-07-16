import 'package:adhd_nemesis/src/domain/models/calendar_event/calendar_event.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'calendar.g.dart';

class Calendar {
  final Map<EventType, List<CalendarEvent>> events;
  final DateTime selectedDate;
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
    DateTime? selectedDate,
    this.events = const {EventType.reminder: [], EventType.schedule: []},
  }) : selectedDate = selectedDate ?? DateTime.now();
}

@riverpod
class CalendarNotifier extends _$CalendarNotifier {
  @override
  Calendar build() => Calendar();

  void selectDate(DateTime date) {
    state = state.copyWith(selectedDate: date);
  }

  void createEvent(CalendarEvent event) {
    state = state.copyWith(
      events: Map.from(state.events)..[event.type]!.add(event),
      selectedDate: state.selectedDate,
    );
  }

  void deleteEvent(int id) {
    state = state.copyWith(
      events: Map.from(state.events)
        ..updateAll(
          (key, value) => value.where((event) => event.id != id).toList(),
        ),
      selectedDate: state.selectedDate,
    );
  }
}
