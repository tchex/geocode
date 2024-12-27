import '../utils/try_parse.dart';

class Coordinates {
  /// Latitude coordinate value.
  double? latitude;

  /// Longitude coordinate value.
  double? longitude;

  /// Number of Matches found.
  double? matches;

  Coordinates({this.latitude, this.longitude});

  factory Coordinates.fromJson(Map<String, dynamic> coordinates) => Coordinates(
      latitude: double.tryParse(tryParse(coordinates['latt']) ?? ''),
      longitude: double.tryParse(tryParse(coordinates['longt']) ?? ''),
      matches: double.tryParse(tryParse(coordinates['matches']) ?? ''),
  );

  @override
  String toString() => "GEOCODE: longitude=$longitude, latitude=$latitude";
}
