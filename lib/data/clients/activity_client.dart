import 'package:ps_fwc_tecnologia/data/models/remote_activity_model.dart';

abstract class ActivityClient {
  Future<List<RemoteActivityModel>> getAllFromDatasource();
}
