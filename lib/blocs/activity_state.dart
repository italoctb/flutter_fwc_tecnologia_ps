import 'package:ps_fwc_tecnologia/domain/entities/activity_entity.dart';

class ActivityState {
  final bool isLoading;
  final bool unlocked;
  final int currentPage;
  final List<ActivityEntity> activitiesList;

  ActivityState(
      {required this.unlocked,
      required this.isLoading,
      required this.currentPage,
      required this.activitiesList});

  ActivityState copyWith({
    bool? isLoading,
    bool? unlocked,
    int? currentPage,
    List<ActivityEntity>? activitiesList,
  }) {
    return ActivityState(
      isLoading: isLoading ?? this.isLoading,
      unlocked: unlocked ?? this.unlocked,
      currentPage: currentPage ?? this.currentPage,
      activitiesList: activitiesList ?? this.activitiesList,
    );
  }
}
