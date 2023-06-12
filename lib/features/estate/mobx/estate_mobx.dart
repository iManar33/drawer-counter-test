import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

import '../../drawer/mobx/estate_data_mobx.dart';

part 'estate_mobx.g.dart';

class EstateMobx = EstateBase with _$EstateMobx;
final estateMobx = EstateDataMobx();

abstract class EstateBase with Store {
  final dio = Dio();

  @action
  Future<void> incrementCounter(int count) async {
    const url = 'https://api.ibaity.com/v1/config/count';
    await dio.patch(
      url,
      data: {
        "count": count,
      },
    );
    await estateMobx.indexEstateData();
  }
}
