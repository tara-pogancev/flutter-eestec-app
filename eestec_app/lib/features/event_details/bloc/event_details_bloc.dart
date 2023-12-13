import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'event_details_event.dart';
part 'event_details_state.dart';

class EventDetailsBloc extends Bloc<EventDetailsEvent, EventDetailsState> {
  EventDetailsBloc() : super(EventDetailsInitial()) {
    on<EventDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
