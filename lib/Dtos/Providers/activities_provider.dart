import 'package:app/Dtos/Models/model_activities.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ActivitiesProvider with ChangeNotifier {
  List<Data> _activities = [];

  List<Data> get activities => _activities;

  Future<void> fetchActivities() async {
    final url =
        Uri.parse('https://nodejs-api-activities.onrender.com/activities/');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      final activitiesData = Activities.fromJson(responseData);

      _activities = activitiesData.data!;
      notifyListeners();

      print(
          _activities); // Añade esta línea para imprimir los datos en la consola
    } else {
      throw Exception('Failed to load activities');
    }
  }
}
