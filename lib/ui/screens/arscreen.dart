import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';


class ARScreen extends StatefulWidget {
  final List<CameraDescription> cameras;

  ARScreen(this.cameras);

  @override
  _ARScreenState createState() => _ARScreenState();
}

class _ARScreenState extends State<ARScreen> {
  late ARKitController arkitController;
  late CameraController cameraController;

  @override
  void initState() {
    super.initState();

    // Initialize the camera controller
    cameraController = CameraController(widget.cameras[0], ResolutionPreset.medium);
    cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    arkitController.dispose();
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!cameraController.value.isInitialized) {
      return Container(); // Show an empty container if the camera is not yet initialized
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('AR Screen with Camera'),
      ),
      body: Stack(
        children: [
          ARKitSceneView(
            onARKitViewCreated: (controller) {
              arkitController = controller;
              // Add AR content and configurations here.
            },
          ),
          Positioned.fill(
            child: CameraPreview(cameraController), // Display camera feed
          ),
        ],
      ),
    );
  }
}
