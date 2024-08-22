import 'package:dio/dio.dart';
import 'package:flutter_application_2/universities/data/models/university_model.dart';

class UniversityRepository {
  final dio = Dio();

  Future<List<UniversityModel>> fetchUniversities({
    required String country,
  }) async {
    Response response = await dio.get(
      'http://universities.hipolabs.com/search?country=$country',
    );

    var universities = <UniversityModel>[];

    for (var item in response.data) {
      universities.add(UniversityModel.fromJson(item));
    }

    return universities;
  }
}
