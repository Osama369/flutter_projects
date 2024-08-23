import 'package:flutter/material.dart';

void main() {
  runApp(const MyMain());
}

// Class to invoke MyApp in MaterialApp
class MyMain extends StatelessWidget {
  const MyMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyApp()); // MyApp is invoked here
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppScreenState createState() => _MyAppScreenState();
}

class _MyAppScreenState extends State<MyApp> {
  Offset _offset = Offset(0.0, 0.0);
  double scaleFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture Demo"),
      ),
      body: GestureDetector(
        onScaleUpdate: (details) {
          setState(() {
            _offset = Offset(_offset.dx + details.focalPointDelta.dx,
                _offset.dy + details.focalPointDelta.dy);
            scaleFactor = details.scale;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Scale factor: ${scaleFactor.toStringAsFixed(2)}"),
            ),
          );
        },
        child: Center(
          child: Transform.translate(
            offset: _offset,
            child: Transform.scale(
              scale: scaleFactor,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Scaling and Moving Box",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
