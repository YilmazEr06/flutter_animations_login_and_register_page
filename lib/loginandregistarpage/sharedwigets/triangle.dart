import 'package:flutter/material.dart';
class createriangle extends StatelessWidget {
  final double minsize;
  
  final Animation radiosanimation;
  
  final double top;
  
  final double left;
  
  final double maxsize;

  final List<Color> colors;

  const createriangle({
    super.key,
    required this.radiosanimation, 
    required this.top, 
    required this.left, 
    required this.maxsize,
    required this.minsize, 
    required this.colors,
  
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        child:CustomPaint(
          painter: TrianglePainter(radiosanimation: radiosanimation, top: top, left: left, maxsize: maxsize, minsize: minsize, colors: colors)));
  }
}
class TrianglePainter extends CustomPainter {
  final double minsize;
  
  final Animation radiosanimation;
  
  final double top;
  
  final double left;
  
  final double maxsize;

  final List<Color> colors;
  TrianglePainter({
    required this.radiosanimation, 
    required this.top, 
    required this.left, 
    required this.maxsize,
    required this.minsize, 
    required this.colors,
  
  });
  @override
  void paint(Canvas canvas, Size size) {
    double radius= radiosanimation.value;
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..shader= LinearGradient(
      colors: colors,
      begin: Alignment.bottomRight,
      end: Alignment.topLeft).createShader(Rect.fromPoints(Offset(0, 100),Offset(50, 80)));

    // Define the triangle's points
    Path path = Path();
    path.moveTo( maxsize-(maxsize-minsize)*radius / 2, 0); // Top point
    path.lineTo(0, maxsize-(maxsize-minsize)*radius ); // Bottom left point
    path.lineTo(maxsize-(maxsize-minsize)*radius, maxsize-(maxsize-minsize)*radius); // Bottom right point
    path.close();

    // Draw the triangle
    canvas.drawPath(path, paint);
   
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return true;
  }
}
