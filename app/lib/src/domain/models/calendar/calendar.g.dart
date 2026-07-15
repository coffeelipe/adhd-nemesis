// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CalendarNotifier)
final calendarProvider = CalendarNotifierProvider._();

final class CalendarNotifierProvider
    extends $NotifierProvider<CalendarNotifier, Calendar> {
  CalendarNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'calendarProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$calendarNotifierHash();

  @$internal
  @override
  CalendarNotifier create() => CalendarNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Calendar value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Calendar>(value),
    );
  }
}

String _$calendarNotifierHash() => r'cb4c1a604baf465ff73467a93a20a4845b457ec7';

abstract class _$CalendarNotifier extends $Notifier<Calendar> {
  Calendar build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<Calendar, Calendar>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Calendar, Calendar>,
              Calendar,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
