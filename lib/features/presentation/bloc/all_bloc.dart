import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'all_event.dart';
part 'all_state.dart';

class AllBloc extends Bloc<AllEvent, AllState> {
  AllBloc() : super(AllInitial()) {
    on<AllEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
