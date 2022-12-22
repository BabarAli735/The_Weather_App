import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double logitute;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      logitute = position.longitude;
      print(position);
    } catch (exception) {
      print(exception);
    }
  }
}
