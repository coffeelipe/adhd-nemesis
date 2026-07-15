class CalendarEvent {
  final int id;
  final String title;
  final EventType type;
  final DateTime date;

  CalendarEvent({
    required this.id,
    required this.title,
    required this.date,
    required this.type,
  });
}

enum EventType { reminder, schedule }
