// ignore_for_file: deprecated_member_use

import 'dart:convert';
import 'package:assignment_task/model/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomescreenController extends GetxController
    with SingleGetTickerProviderMixin {
  RxList<Meal> menudata = <Meal>[].obs;
  late final TabController menutabController;
  late final TabController cattabController;

  @override
  void onInit() {
    super.onInit();
    menutabController = TabController(length: 2, vsync: this);
    cattabController = TabController(length: 5, vsync: this);

    fetchMealsByFirstLetter();
  }

  RxInt tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  Future<void> fetchMealsByFirstLetter() async {
    try {
      final response = await http.get(
          Uri.parse('https://www.themealdb.com/api/json/v1/1/search.php?f=c'));

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body)['meals'];
        List<Meal> meals = data.map((json) => Meal.fromJson(json)).toList();
        menudata.assignAll(meals);
        for (var mealdata in meals) {
          print(mealdata.name);
        }
      } else {
        throw Exception('Failed to load meals');
      }
    } catch (e) {
      print('Error fetching meals: $e');
    }
  }
}
