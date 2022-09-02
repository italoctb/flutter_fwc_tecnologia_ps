import 'package:flutter/material.dart';

import 'box_avatar_user.dart';

class WakkeDrawer extends StatelessWidget {
  const WakkeDrawer({
    Key? key,
    required this.height,
  }) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(171, 119, 0, 255),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          Image(
            image: const AssetImage("assets/logo_wakke_branco.png"),
            width: height * 0.25,
          ),
          SizedBox(
            height: height * 0.08,
          ),
          BoxAvatarUser(size: height * 0.2),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Feed Fun",
                      style: TextStyle(color: Colors.white, letterSpacing: 4),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Times",
                      style: TextStyle(color: Colors.white, letterSpacing: 4),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Notificações",
                      style: TextStyle(color: Colors.white, letterSpacing: 4),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Conexões",
                      style: TextStyle(color: Colors.white, letterSpacing: 4),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Minha Conta",
                      style: TextStyle(color: Colors.white, letterSpacing: 4),
                      textAlign: TextAlign.left,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Finalizar Cadastro",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 4,
                      ),
                      textAlign: TextAlign.left,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
