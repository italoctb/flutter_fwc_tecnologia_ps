abstract class ActivityEvent {
  const ActivityEvent();
}

class BottomNavigationButtomClicked extends ActivityEvent {
  final int index;

  BottomNavigationButtomClicked(this.index);
}

class ActivityLoaded extends ActivityEvent {}
