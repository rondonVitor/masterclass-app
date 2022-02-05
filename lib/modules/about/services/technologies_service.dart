import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class TechnologiesService {
  Future<dynamic> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/technologies.json');
    return json.decode(jsonText);
  }
}
