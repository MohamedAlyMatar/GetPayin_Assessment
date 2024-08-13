import 'package:bloc/bloc.dart';
import 'package:pay_in_app/src/features/home/presentation/bloc/home_event.dart';
import 'package:pay_in_app/src/features/home/presentation/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
