import 'package:flutter/material.dart';
import 'package:camera/camera.dart';


class CameraApp extends StatefulWidget {
  static const String route = '/camera';

  final CameraDescription camera;

  const CameraApp({
    Key? key,
    required this.camera,
  }) : super(key: key);

  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController _controller;

  @override
  void initState() {
    super.initState();

    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );


    _controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Container();
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Icon(Icons.camera_alt_rounded, color: Colors.white),
        ),
      ),
      body: CameraPreview(_controller), // Camera preview
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () async {
          try {
            // Take a picture
            final XFile photo = await _controller.takePicture();

            print('Picture: ${photo.path}');
          } catch (e) {
            print('Error: $e');
          }
        },
        child: const Icon(Icons.camera, size: 40),
      ),
    );
  }
}