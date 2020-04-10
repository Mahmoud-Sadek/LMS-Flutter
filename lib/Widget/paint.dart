import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Style/conist.dart';
class PainterTop extends CustomPainter{

  Paint _paint;

  PainterTop(){
    _paint =Paint()..color = mainColor..strokeCap = StrokeCap.round..strokeWidth=10;
  }


  @override
  void paint(Canvas canvas, Size size) {

    var topCircle = Offset(30, 30);
    _paint.color=Color(0xff83F3F9);
    _paint.style =PaintingStyle.fill;
    canvas.drawCircle(topCircle, 100, _paint);





  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
class PainterCenter extends CustomPainter{

  Paint _paint;

  PainterCenter(){
    _paint =Paint()..color = mainColor..strokeCap = StrokeCap.round..strokeWidth=10;
  }


  @override
  void paint(Canvas canvas, Size size) {

    var topCircle = Offset(0, 430);
    _paint.color=Color(0xffFFD183);
    _paint.style =PaintingStyle.fill;
    canvas.drawCircle(topCircle, 120, _paint);





  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
class PainterBottom extends CustomPainter{

  Paint _paint;

  PainterBottom(){
    _paint =Paint()..color = mainColor..strokeCap = StrokeCap.round..strokeWidth=10;
  }


  @override
  void paint(Canvas canvas, Size size) {

    var topCircle = Offset(400, 600);
    _paint.color=Color(0xffAE98EA);
    _paint.style =PaintingStyle.fill;
    canvas.drawCircle(topCircle, 100, _paint);





  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}