import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/activity_bloc.dart';
import '../../../../blocs/activity_state.dart';
import '../components/activity_card.dart';
import '../components/box_avatar_user.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Column(
                children: [
                  Row(children: [
                    Image(
                      image: const AssetImage("assets/icon_chat.png"),
                      width: width * 0.06,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Está acontecendo...",
                      style: TextStyle(
                        color: Color(0xFF7800FF),
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<ActivityBloc, ActivityState>(
                    builder: (context, state) {
                      return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.activitiesList.length,
                          itemBuilder: (context, index) {
                            return ActivityCard(
                                state: state,
                                index: index,
                                height: height,
                                width: width);
                          });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
