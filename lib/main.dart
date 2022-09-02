import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ps_fwc_tecnologia/blocs/activity_bloc.dart';
import 'package:ps_fwc_tecnologia/blocs/activity_events.dart';
import 'package:ps_fwc_tecnologia/data/repositories/activity_repository.dart';
import 'package:ps_fwc_tecnologia/datasource/services/activity_client_service.dart';
import 'package:ps_fwc_tecnologia/domain/usecases/activity_usecase.dart';

import 'ui/homeView/home_view.dart';

void main() {
  final activityClient = ActivityClientService();
  final activityRepository = ActivityRepository(activityClient);
  runApp(MyApp(
    activityRepository: activityRepository,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.activityRepository}) : super(key: key);

  final ActivityUseCase activityRepository;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) =>
            ActivityBloc(activityRepository)..add(ActivityLoaded()),
        child: const HomeView(),
      ),
    );
  }
}
