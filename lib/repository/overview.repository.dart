import 'dart:convert';
import 'dart:core';

import 'package:Finance/models/overview.models.dart';
import 'package:flutter/services.dart';

class OverviewRepository {
  Future<List<OverViewModel>> getlist() async {
    var  result =
        json.decode(await rootBundle.loadString("lib/apiLocal.json")).cast<Map<String, dynamic>>();

    return List.generate(result.length, (i){
      return OverViewModel(
        descri: result[i]['descri'],
        icon: result[i]['icon'],
        type: result[i]['type'],
        value: result[i]['value'],
      );
    });
    // return (result as List)
    //     .map((json) => new OverViewModel.fromJson(json))
    //     .toList();
  }
}
