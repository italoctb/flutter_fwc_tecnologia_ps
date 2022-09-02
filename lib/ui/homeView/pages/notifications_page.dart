import 'package:flutter/material.dart';

import '../components/box_avatar_user.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Notificações",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 231, 229, 229),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BoxAvatarUser(
                  size: 50,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "olamundo_2653",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text("30/08/2022 20:44")
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          "Pode comemorar! Você ganhou 2xps realizando o desafio: ANABOLIZANTES: Duvido você ficar no pódio!")
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
