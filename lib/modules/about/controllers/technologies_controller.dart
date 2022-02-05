import 'package:flutter/cupertino.dart';
import 'package:masterclass_app/modules/about/models/technologies_model.dart';
import 'package:masterclass_app/modules/about/services/technologies_service.dart';

class TechnologiesController extends ChangeNotifier {
  final TechnologiesService technologiesService;
  List<Technologies> technologiesList = [];

  TechnologiesController({
    required this.technologiesService,
  });

  loadTechnologiesList() async {
    List list = await technologiesService.loadJsonData();
    technologiesList = list.map(Technologies.fromJson).toList();
    notifyListeners();
  }
}
