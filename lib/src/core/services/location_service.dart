import 'package:flutter/services.dart';
import 'package:location/location.dart';

class LocationService {
  Location location = new Location();

  Future<LocationData> getCurrentLocation() async {
    LocationData locationData;
    PermissionStatus _permission;
    await location.changeSettings(
        accuracy: LocationAccuracy.high, interval: 1000);
    try {
      bool serviceStatus = await location.serviceEnabled();

      if (serviceStatus) {
        _permission = await location.requestPermission();
        if (_permission == PermissionStatus.granted) {
          locationData = await location.getLocation();
          return locationData;
        } else {
          throw Exception("Permission Denied");
        }
      } else {
        bool serviceStatusResult = await location.requestService();
        if (serviceStatusResult) {
          locationData = await location.getLocation();
          return locationData;
        } else {
          throw Exception("Location Service not enabled");
        }
      }
    } on PlatformException catch (e) {
      print(e);
      if (e.code == 'PERMISSION_DENIED') {
        //error = e.message;
      } else if (e.code == 'SERVICE_STATUS_ERROR') {
        //error = e.message;
      }
      throw Exception("Permission Denied");
    }
  }
}
