import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';

class LocationTrackingScreen extends StatefulWidget {
  @override
  _LocationTrackingScreenState createState() => _LocationTrackingScreenState();
}

class _LocationTrackingScreenState extends State<LocationTrackingScreen> {
  final Location location = Location();
  LocationData? _locationData;

  @override
  void initState() {
    super.initState();
    initLocation();
  }

  void initLocation() async {
    location.onLocationChanged.listen((LocationData currentLocation) {
      setState(() {
        _locationData = currentLocation;
      });
    });
  }

  Future<void> registerUserLocation() async {
    if (_locationData != null) {
      // Replace with your backend server URL and API endpoint
      final apiUrl = 'http://your-backend-server-url/api/register';

      // Replace with the user's location data
      final userLocationData = {
        'latitude': _locationData!.latitude.toString(),
        'longitude': _locationData!.longitude.toString(),
      };

      try {
        final response = await http.post(
          Uri.parse(apiUrl),
          body: userLocationData,
        );

        if (response.statusCode == 200) {
          print('User location registered successfully');
        } else {
          print('Failed to register user location');
        }
      } catch (e) {
        print('Error: $e');
      }
    } else {
      print('Location data is not available. Make sure location permissions are granted.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Tracking'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_locationData != null)
              Text('Latitude: ${_locationData!.latitude}\n'
                  'Longitude: ${_locationData!.longitude}'),
            ElevatedButton(
              onPressed: () {
                registerUserLocation();
              },
              child: Text('Register User Location'),
            ),
          ],
        ),
      ),
    );
  }
}
