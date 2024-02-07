import 'package:flutter/material.dart';

class createcircle extends StatelessWidget {
  const createcircle({
    super.key,
    required this.radiosanimation, 
    required this.top, 
    required this.left, 
    required this.maxsize,
    required this.minsize, 
    required this.colors,
  });

  final Animation radiosanimation;
  final double top;
  final double left;
  final double maxsize;
  final double minsize;
  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        child:CustomPaint(
          painter: circlepainter(
            raidus: radiosanimation.value ,
            colors: colors,
            maxsize: maxsize,
            minsize: minsize),));
  }
}


class circlepainter extends CustomPainter{
  circlepainter({required this.raidus, required this.maxsize,required this.minsize, required this.colors });
  final  double raidus;
  final double maxsize;
  final double minsize;
  
  final List<Color> colors;
 
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
    ..shader= LinearGradient(
      colors: colors,
      begin: Alignment.bottomRight,
      end: Alignment.topLeft).createShader(Rect.fromCircle(center: Offset(0, 0), radius:  maxsize-(maxsize-minsize)*raidus));
    
    canvas.drawCircle(Offset.zero, maxsize-(maxsize-minsize)*raidus, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}

