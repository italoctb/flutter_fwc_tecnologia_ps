// ignore_for_file: await_only_futures

import 'package:ps_fwc_tecnologia/data/clients/activity_client.dart';
import 'package:ps_fwc_tecnologia/data/models/remote_activity_model.dart';
import 'package:ps_fwc_tecnologia/datasource/infos/info_datasource.dart';

class ActivityClientService implements ActivityClient {
  final InfoDataSource _dataSource = InfoDataSource();
  @override
  Future<List<RemoteActivityModel>> getAllFromDatasource() async {
    final List<RemoteActivityModel> resp = [];
    final objects = await _dataSource.getData();
    for (var element in objects) {
      resp.add(RemoteActivityModel.fromJson(element));
    }
    return resp;
  }
}
