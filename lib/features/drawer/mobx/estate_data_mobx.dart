import 'package:dio/dio.dart';
import 'package:estate/features/drawer/models/estate_data_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'estate_data_mobx.g.dart';

class EstateDataMobx = EstateDataBase with _$EstateDataMobx;

abstract class EstateDataBase with Store {
  final dio = Dio();

  @observable
  EstateDataModel? estate;

  @action
  Future<void> indexEstateData() async {
    const url = 'http://api.ibaity.com/v1/config';

    try {
      final response = await dio.get(url);
      estate = EstateDataModel.fromJson(response.data);
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }
}
