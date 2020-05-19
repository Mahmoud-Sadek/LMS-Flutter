
import 'package:flutter/material.dart';




class SignUpBackGround2 extends StatelessWidget {
  const SignUpBackGround2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: ClipPath(
        clipper: SecondCurve(),
        child: Container(
          width: MediaQuery.of(context).size.width * .85,
          height: 800,
          decoration: BoxDecoration(

              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [Color(0xff47E6D7), Color(0xff267972)],
              )),
        ),
      ),
    );
  }
}

class SignUpBackGround1 extends StatelessWidget {
  const SignUpBackGround1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: ClipPath(
        clipper: FirstCurve(),
        child: Container(
          width: MediaQuery.of(context).size.width * .85,
          height: 850,
          decoration: BoxDecoration(

            color: Color(0xff006158),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}

class FirstCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var sw = size.width;
    var sh = size.height;
    path.cubicTo(sh, sw / 5, sh, sw / 3.5, sh, sw);
    path.lineTo(size.width, size.height / 10);

    path.lineTo(0, size.height * sh);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class SecondCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var sw = size.width;
    var sh = size.height;
    var roundFactor = 20.0;
    path.moveTo(0, sh * .03);
    path.lineTo(0, sh - roundFactor);
    path.quadraticBezierTo(0, sh, roundFactor, sh);
    path.lineTo(sw - roundFactor, sh);
    path.quadraticBezierTo(sw, sh, sw, sh - roundFactor);
    path.lineTo(sw, 40);
    path.quadraticBezierTo(sw, 0, sw, 0);
    path.lineTo(roundFactor, sh * .03 + 15);
    path.quadraticBezierTo(
        0, sh * .03 + roundFactor, 0, sh * .03 + roundFactor * 2);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
