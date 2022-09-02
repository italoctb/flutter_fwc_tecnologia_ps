import 'package:flutter/material.dart';

class WakkeAppBar extends StatelessWidget {
  const WakkeAppBar({
    Key? key,
    required this.scaffoldKey,
    required this.width,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;
  final double width;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFFfeffff),
      titleSpacing: 0,
      leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: ImageIcon(
            const AssetImage("assets/icon_header_menu.png"),
            color: const Color(0xFF7800FF),
            size: width * 0.04,
          )),
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(),
            Image(
              image: const AssetImage("assets/logo_wakke_roxo.png"),
              width: width * 0.30,
            ),
            IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  const AssetImage("assets/icon_header_search.png"),
                  color: const Color(0xFF7800FF),
                  size: width * 0.04,
                )),
          ]),
    );
  }
}
