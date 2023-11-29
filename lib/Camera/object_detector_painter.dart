import 'dart:io';
import 'dart:ui';
import 'dart:ui' as ui;

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'coordinates_translator.dart';

class ObjectDetectorPainter extends CustomPainter {
  ObjectDetectorPainter(
    this._objects,
    this.imageSize,
    this.rotation,
    this.cameraLensDirection,
  );
  double left = 0.0;
  double top = 0.0;
  double right = 0.0;
  double bottom = 0.0;

  final List<DetectedObject> _objects;
  final Size imageSize;
  final InputImageRotation rotation;
  final CameraLensDirection cameraLensDirection;
  double getDistance() {
    //(focal length(mm) * real height of object(mm) * image height(pixels))/ (object height (pixels) * sensor height(mm) )
    if (bottom - top > 0) {
      return ((23 * 1534 * 2340) / ((bottom - top) * 25.4));
    }
    return 0.0;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..color = Colors.lightGreenAccent;

    final Paint background = Paint()..color = Color(0x99000000);
    double distance = getDistance();
    for (final DetectedObject detectedObject in _objects) {
      final ParagraphBuilder builder = ParagraphBuilder(
        ParagraphStyle(
            textAlign: TextAlign.left,
            fontSize: 16,
            textDirection: TextDirection.ltr),
      );
      builder.pushStyle(
          ui.TextStyle(color: Colors.lightGreenAccent, background: background));
      if (detectedObject.labels.isNotEmpty) {
        final label = detectedObject.labels
            .reduce((a, b) => a.confidence > b.confidence ? a : b);
        /*
        if (distance <= 3000.0 && distance != 0.0) {
          FlutterBeep.beep();
          builder.addText('$distance TOO CLOSE \n');
        } else {*/
        if (distance < 3000) {
          FlutterBeep.beep();
          builder.addText('$distance TOO CLOSE \n');
        } else {
          builder.addText('$distance\n');
        }

        //}
      }
      builder.pop();

      left = translateX(
        detectedObject.boundingBox.left,
        size,
        imageSize,
        rotation,
        cameraLensDirection,
      );
      top = translateY(
        detectedObject.boundingBox.top,
        size,
        imageSize,
        rotation,
        cameraLensDirection,
      );
      right = translateX(
        detectedObject.boundingBox.right,
        size,
        imageSize,
        rotation,
        cameraLensDirection,
      );
      bottom = translateY(
        detectedObject.boundingBox.bottom,
        size,
        imageSize,
        rotation,
        cameraLensDirection,
      );
      distance = getDistance();
      canvas.drawRect(
        Rect.fromLTRB(left, top, right, bottom),
        paint,
      );

      canvas.drawParagraph(
        builder.build()
          ..layout(ParagraphConstraints(
            width: (right - left).abs(),
          )),
        Offset(
            Platform.isAndroid &&
                    cameraLensDirection == CameraLensDirection.front
                ? right
                : left,
            top),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
