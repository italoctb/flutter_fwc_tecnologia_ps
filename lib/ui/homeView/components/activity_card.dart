import 'package:flutter/material.dart';

import '../../../blocs/activity_state.dart';
import 'box_avatar_user.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    Key? key,
    required this.state,
    required this.index,
    required this.height,
    required this.width,
  }) : super(key: key);
  final ActivityState state;
  final int index;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  BoxAvatarUser(
                    size: 30,
                    urlImage:
                        state.activitiesList[index].usuarioAutorImagemPerfil,
                    color1:
                        state.activitiesList[index].usuarioAutorBorda?.color1,
                    color2:
                        state.activitiesList[index].usuarioAutorBorda?.color2,
                    urlIcon: state.activitiesList[index].usuarioAutorIcone?.url,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    state.activitiesList[index].usuarioAutorApelido,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Row(
                children: [
                  const Image(
                    image: AssetImage("assets/icon_coments.png"),
                    width: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    state.activitiesList[index].comentariosQtd.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFcd7885),
                        fontSize: 14),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Image(
                    image: AssetImage("assets/icon_star.png"),
                    width: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    state.activitiesList[index].avaliacaoNota
                        .toStringAsFixed(1),
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFcd7885),
                        fontSize: 14),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: height * 0.55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(state.activitiesList[index].imagemCapa),
                    fit: BoxFit.cover),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: height * 0.05),
                  width: width * 0.5,
                  height: height * 0.18,
                  decoration: const BoxDecoration(
                      color: Color(0xFF0bccad),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  alignment: Alignment.bottomCenter,
                  child: Center(
                      child: Text(
                    state.activitiesList[index].titulo,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  )),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
