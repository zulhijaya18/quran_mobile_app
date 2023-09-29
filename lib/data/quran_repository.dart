import 'dart:developer';

import 'package:quran_mobile_app/constants/endpoints.dart';
import 'package:quran_mobile_app/utils/api.dart';

class QuranRepository {
  Future<List<Map<String, dynamic>>> listSurah() async {
    final res = await API().getQuran(Endpoints.surah);
    return (res.data['data'] as List)
        .map((e) => e as Map<String, dynamic>)
        .toList();
  }

  Future<Map<String, dynamic>> detailSurah(String id) async {
    final res = await API().getQuran('${Endpoints.surah}/$id');
    return res.data['data'] as Map<String, dynamic>;
  }
}
