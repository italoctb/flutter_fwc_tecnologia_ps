import 'package:ps_fwc_tecnologia/domain/entities/activity_entity.dart';

abstract class ActivityUseCase {
  Future<List<ActivityEntity>> getAll();
}
