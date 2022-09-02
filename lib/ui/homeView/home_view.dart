import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/activity_bloc.dart';
import '../../../blocs/activity_state.dart';
import 'components/custom_bnb.dart';
import 'components/wakke_appbar.dart';
import 'components/wakke_drawer.dart';
import 'pages/home_page.dart';
import 'pages/notifications_page.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = PageController(initialPage: 0);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      drawer: WakkeDrawer(
        height: height,
      ),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(height * 0.06),
          child: WakkeAppBar(scaffoldKey: scaffoldKey, width: width)),
      body: Stack(
        children: [
          BlocBuilder<ActivityBloc, ActivityState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const CircularProgressIndicator();
              }
              if (state.unlocked) {
                controller.animateToPage(state.currentPage,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.decelerate);
              }
              return PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [
                  HomePage(width: width, height: height),
                  const NotificationPage()
                ],
              );
            },
          ),
          CustomBNB(width: width)
        ],
      ),
    );
  }
}
