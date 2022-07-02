import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.947075208913649).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: TeamHeaderSectionCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class TeamHeaderSectionCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6658384, size.height * 0.8897235);
    path_0.cubicTo(
        size.width * 0.8787772,
        size.height * 0.8825853,
        size.width * 0.9675766,
        size.height * 0.6516176,
        size.width * 0.9470780,
        size.height * 0.3903735);
    path_0.cubicTo(
        size.width * 0.9346100,
        size.height * 0.2314912,
        size.width * 0.8671783,
        size.height * 0.08451794,
        size.width * 0.7444540,
        size.height * 3.522618e-7);
    path_0.lineTo(size.width * 0.2305660, size.height * 3.522618e-7);
    path_0.cubicTo(
        size.width * 0.1773181,
        size.height * 0.03572588,
        size.width * 0.1369802,
        size.height * 0.07931412,
        size.width * 0.1054407,
        size.height * 0.1191965);
    path_0.cubicTo(
        size.width * -0.02138557,
        size.height * 0.2795574,
        size.width * -0.03745265,
        size.height * 0.5506059,
        size.width * 0.07716574,
        size.height * 0.6894441);
    path_0.cubicTo(
        size.width * 0.1917841,
        size.height * 0.8282882,
        size.width * 0.4204262,
        size.height * 0.8979412,
        size.width * 0.6658384,
        size.height * 0.8897235);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.4749749, size.height * 0.8903735),
        Offset(size.width * 0.4749749, size.height * 0.00007144735),
        [Color(0xff5D94FD).withOpacity(1), Color(0xffFF1863).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4616825, size.height * 0.9392971);
    path_1.cubicTo(
        size.width * 0.6418301,
        size.height * 1.020285,
        size.width * 0.8903287,
        size.height * 0.9586912,
        size.width * 0.9829248,
        size.height * 0.8041765);
    path_1.cubicTo(
        size.width * 0.9883733,
        size.height * 0.7950824,
        size.width * 0.9934875,
        size.height * 0.7856471,
        size.width * 0.9982869,
        size.height * 0.7759206);
    path_1.lineTo(size.width * 0.9982869, size.height * 0.1618594);
    path_1.cubicTo(
        size.width * 0.9978384,
        size.height * 0.1604203,
        size.width * 0.9973983,
        size.height * 0.1589809,
        size.width * 0.9969499,
        size.height * 0.1575415);
    path_1.cubicTo(
        size.width * 0.9731086,
        size.height * 0.08193382,
        size.width * 0.9279192,
        size.height * 0.03050206,
        size.width * 0.8692006,
        size.height * -0.02905818);
    path_1.cubicTo(size.width * -0.01671309, size.height, size.width,
        size.height, size.width, size.height);
    path_1.lineTo(size.width * 0.5188134, size.height);
    path_1.cubicTo(
        size.width * 0.5019276,
        size.height * 0.005721529,
        size.width * 0.4849944,
        size.height * 0.01209859,
        size.width * 0.4680808,
        size.height * 0.01913388);
    path_1.cubicTo(
        size.width * 0.2619345,
        size.height * 0.1048674,
        size.width * 0.1130507,
        size.height * 0.3033029,
        size.width * 0.1687610,
        size.height * 0.5688147);
    path_1.cubicTo(
        size.width * 0.2174591,
        size.height * 0.8009206,
        size.width * 0.3558329,
        size.height * 0.8917088,
        size.width * 0.4616825,
        size.height * 0.9392971);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5776323, size.height * 0.9750324),
        Offset(size.width * 0.5776323, size.height * 0.00006361794),
        [Color(0xff5D94FD).withOpacity(1), Color(0xffFF1863).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.9939944, size.height * 0.5939824);
    path_2.cubicTo(
        size.width * 0.9954457,
        size.height * 0.5897176,
        size.width * 0.9968747,
        size.height * 0.5854088,
        size.width * 0.9982869,
        size.height * 0.5810765);
    path_2.lineTo(size.width * 0.9982869, size.height * 0.2643147);
    path_2.cubicTo(
        size.width * 0.9746323,
        size.height * 0.2236403,
        size.width * 0.9367382,
        size.height * 0.1881456,
        size.width * 0.8794178,
        size.height * 0.1615612);
    path_2.cubicTo(
        size.width * 0.6850724,
        size.height * 0.07142000,
        size.width * 0.2159033,
        size.height * 0.1347735,
        size.width * 0.07982897,
        size.height * 0.4159147);
    path_2.cubicTo(
        size.width * -0.03045877,
        size.height * 0.6437706,
        size.width * 0.1297713,
        size.height * 0.9091618,
        size.width * 0.3265042,
        size.height * 0.9985971);
    path_2.lineTo(size.width * 0.6142173, size.height * 0.9985971);
    path_2.cubicTo(
        size.width * 0.7974958,
        size.height * 0.9253529,
        size.width * 0.9450139,
        size.height * 0.7379029,
        size.width * 0.9939944,
        size.height * 0.5939824);

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.1621869, size.height * 0.8729941),
        Offset(size.width * 0.9384290, size.height * 0.1852521),
        [Color(0xffFF1863).withOpacity(1), Color(0xff5D94FD).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_2, paint_2_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
