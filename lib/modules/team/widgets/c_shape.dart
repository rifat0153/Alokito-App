import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class Top1Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9945131, size.height * 0.5369597);
    path_0.cubicTo(
        size.width * 0.9960350,
        size.height * 0.5320940,
        size.width * 0.9975306,
        size.height * 0.5271779,
        size.width * 0.9990087,
        size.height * 0.5222349);
    path_0.lineTo(size.width * 0.9990087, size.height * 0.1608292);
    path_0.cubicTo(
        size.width * 0.9742507,
        size.height * 0.1144218,
        size.width * 0.9345889,
        size.height * 0.07392450,
        size.width * 0.8745918,
        size.height * 0.04359362);
    path_0.cubicTo(
        size.width * 0.6711837,
        size.height * -0.05925201,
        size.width * 0.1801277,
        size.height * 0.01303030,
        size.width * 0.03770612,
        size.height * 0.3337953);
    path_0.cubicTo(
        size.width * -0.07772653,
        size.height * 0.5937651,
        size.width * 0.08997813,
        size.height * 0.8965604,
        size.width * 0.2958863,
        size.height * 0.9986007);
    path_0.lineTo(size.width * 0.5970204, size.height * 0.9986007);
    path_0.cubicTo(
        size.width * 0.7888513,
        size.height * 0.9150336,
        size.width * 0.9432478,
        size.height * 0.7011644,
        size.width * 0.9945131,
        size.height * 0.5369597);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.1239058, size.height * 0.8552953),
        Offset(size.width * 0.9363557, size.height * 0.07062349),
        [Color(0xffFF1863).withOpacity(1), Color(0xff5D94FD).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MiddlePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3610165, size.height * 0.9619307);
    path_0.cubicTo(
        size.width * 0.5744587,
        size.height * 1.044870,
        size.width * 0.8688845,
        size.height * 0.9817922,
        size.width * 0.9785941,
        size.height * 0.8235542);
    path_0.cubicTo(
        size.width * 0.9850495,
        size.height * 0.8142410,
        size.width * 0.9911089,
        size.height * 0.8045783,
        size.width * 0.9967954,
        size.height * 0.7946175);
    path_0.lineTo(size.width * 0.9967954, size.height * 0.1657596);
    path_0.cubicTo(
        size.width * 0.9962607,
        size.height * 0.1642858,
        size.width * 0.9957426,
        size.height * 0.1628117,
        size.width * 0.9952112,
        size.height * 0.1613377);
    path_0.cubicTo(
        size.width * 0.9669637,
        size.height * 0.08390813,
        size.width * 0.9134191,
        size.height * 0.03123705,
        size.width * 0.8438482,
        0);
    path_0.lineTo(size.width * 0.4287063, 0);
    path_0.cubicTo(
        size.width * 0.4086964,
        size.height * 0.005859367,
        size.width * 0.3886370,
        size.height * 0.01239015,
        size.width * 0.3685974,
        size.height * 0.01959494);
    path_0.cubicTo(
        size.width * 0.1243505,
        size.height * 0.1073940,
        size.width * -0.05205017,
        size.height * 0.3106114,
        size.width * 0.01395653,
        size.height * 0.5825211);
    path_0.cubicTo(
        size.width * 0.07165512,
        size.height * 0.8202199,
        size.width * 0.2356023,
        size.height * 0.9131958,
        size.width * 0.3610165,
        size.height * 0.9619307);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.4983960, size.height * 0.9985271),
        Offset(size.width * 0.4983960, size.height * 0.00006515090),
        [Color(0xff5D94FD).withOpacity(1), Color(0xffFF1863).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class LastPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6989357, size.height * 0.9983696);
    path_0.cubicTo(
        size.width * 0.9224591,
        size.height * 0.9903597,
        size.width * 1.015673,
        size.height * 0.7311881,
        size.width * 0.9941550,
        size.height * 0.4380429);
    path_0.cubicTo(
        size.width * 0.9810673,
        size.height * 0.2597591,
        size.width * 0.9102836,
        size.height * 0.09483861,
        size.width * 0.7814591,
        size.height * 4.028713e-7);
    path_0.lineTo(size.width * 0.2420269, size.height * 4.028713e-7);
    path_0.cubicTo(
        size.width * 0.1861322,
        size.height * 0.04008845,
        size.width * 0.1437892,
        size.height * 0.08899934,
        size.width * 0.1106819,
        size.height * 0.1337518);
    path_0.cubicTo(
        size.width * -0.02244860,
        size.height * 0.3136947,
        size.width * -0.03931433,
        size.height * 0.6178416,
        size.width * 0.08100146,
        size.height * 0.7736337);
    path_0.cubicTo(
        size.width * 0.2013173,
        size.height * 0.9294323,
        size.width * 0.4413246,
        size.height * 1.007591,
        size.width * 0.6989357,
        size.height * 0.9983696);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.4985848, size.height * 0.9990990),
        Offset(size.width * 0.4985848, size.height * 0.00008017195),
        [Color(0xff5D94FD).withOpacity(1), Color(0xffFF1863).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
