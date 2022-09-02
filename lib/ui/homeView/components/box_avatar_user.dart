import 'package:flutter/material.dart';

class BoxAvatarUser extends StatelessWidget {
  final double size;
  final String? urlImage;
  final String? color1;
  final String? color2;
  final String? urlIcon;
  const BoxAvatarUser({
    Key? key,
    required this.size,
    this.urlImage,
    this.color1,
    this.color2,
    this.urlIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatColor1 = (color1 ?? "#231f1e").toColor();
    final formatColor2 = (color2 ?? "#fff").toColor();
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: size + 5,
          width: size + 5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              gradient: LinearGradient(
                  colors: [formatColor1, formatColor2],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
          child: Container(
            height: size,
            width: size,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  urlImage ??
                      "https://firebasestorage.googleapis.com:443/v0/b/wakke-fun.appspot.com/o/users%2Fa6ef1eca-7e78-420b-b46a-fc8595fcb7f4?alt=media&token=6642fe6d-1cea-48d6-b8d7-cfc122e4ebc8",
                ),
                fit: BoxFit.cover,
              ),
              border: const Border.fromBorderSide(
                  BorderSide(width: 3, color: Colors.white)),
              color: Colors.black12,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
            ),
          ),
        ),
        Builder(builder: (context) {
          if (urlIcon == null) {
            return const SizedBox();
          }
          return Positioned(
            bottom: size,
            child: Image(
              image: NetworkImage(urlIcon!),
              width: size * 0.6,
            ),
          );
        }),
      ],
    );
  }
}

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
