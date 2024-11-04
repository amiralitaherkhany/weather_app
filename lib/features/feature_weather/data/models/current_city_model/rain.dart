import 'dart:convert';

class Rain {
  double? oneHour;

  Rain({this.oneHour});

  factory Rain.fromMap(Map<String, dynamic> data) => Rain(
        oneHour: (data['1h'] as num?)?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        '1h': oneHour,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Rain].
  factory Rain.fromJson(String data) {
    return Rain.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Rain] to a JSON string.
  String toJson() => json.encode(toMap());
}
