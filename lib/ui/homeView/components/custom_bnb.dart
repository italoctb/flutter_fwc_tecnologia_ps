import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/activity_bloc.dart';
import '../../../../blocs/activity_events.dart';

class CustomBNB extends StatelessWidget {
  const CustomBNB({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        child: Container(
          width: width,
          height: 50,
          color: const Color(0xFFfbfbfc),
          child: Stack(
            children: [
              CustomPaint(
                size: Size(width, 50),
                painter: BNBCustomePainter(),
              ),
              Center(
                heightFactor: 0.6,
                child: FloatingActionButton.large(
                  backgroundColor: const Color(0xFF0bccad),
                  onPressed: () {
                    BlocProvider.of<ActivityBloc>(context)
                        .add(BottomNavigationButtomClicked(0));
                  },
                  child: Center(
                    child: Image(
                      image: const AssetImage("assets/icon_wakke_fun.png"),
                      width: width * 0.08,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: width,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          const AssetImage("assets/icon_header_menu.png"),
                          color: const Color.fromARGB(255, 95, 95, 95),
                          size: width * 0.05,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          const AssetImage("assets/icon_add.png"),
                          color: const Color.fromARGB(255, 95, 95, 95),
                          size: width * 0.05,
                        )),
                    Container(
                      width: width * .20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          const AssetImage("assets/icon_user.png"),
                          color: const Color.fromARGB(255, 95, 95, 95),
                          size: width * 0.05,
                        )),
                    IconButton(
                        onPressed: () {
                          BlocProvider.of<ActivityBloc>(context)
                              .add(BottomNavigationButtomClicked(1));
                        },
                        icon: ImageIcon(
                          const AssetImage("assets/icon_notificacoes.png"),
                          color: const Color.fromARGB(255, 95, 95, 95),
                          size: width * 0.05,
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class BNBCustomePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 0);
    path.quadraticBezierTo(0, 0, size.width * .35, 0);
    path.quadraticBezierTo(size.width * .40, 0, size.width * .40, 10);
    path.arcToPoint(Offset(size.width * .60, 10),
        radius: const Radius.circular(5.0), clockwise: false);

    path.quadraticBezierTo(size.width * .60, 0, size.width * .65, 0);
    path.quadraticBezierTo(size.width * .80, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black, 5, true);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
