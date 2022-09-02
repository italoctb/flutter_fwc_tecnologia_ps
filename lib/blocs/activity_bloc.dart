// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:ps_fwc_tecnologia/blocs/activity_events.dart';
import 'package:ps_fwc_tecnologia/blocs/activity_state.dart';
import 'package:ps_fwc_tecnologia/domain/usecases/activity_usecase.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc(this._activityRepository)
      : super(ActivityState(
            currentPage: 0,
            activitiesList: [],
            isLoading: false,
            unlocked: false)) {
    on<BottomNavigationButtomClicked>(_onBottomNavigationButtomClicked);
    on<ActivityLoaded>(_onActivityLoaded);
  }

  final ActivityUseCase _activityRepository;

  void _onBottomNavigationButtomClicked(
      BottomNavigationButtomClicked event, Emitter<ActivityState> emit) {
    emit(state.copyWith(currentPage: event.index, unlocked: true));
  }

  void _onActivityLoaded(
      ActivityLoaded event, Emitter<ActivityState> emit) async {
    emit(state.copyWith(isLoading: true));

    final auxList = await _activityRepository.getAll();
    emit(state.copyWith(isLoading: false, activitiesList: auxList));
  }
}
