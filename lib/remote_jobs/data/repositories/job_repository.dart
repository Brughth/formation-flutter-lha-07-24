import 'package:dio/dio.dart';
import 'package:flutter_application_2/remote_jobs/data/models/remote_job_data.dart';

class JobRepository {
  final Dio dio = Dio(BaseOptions(headers: {
    "xRayHash": "xID_66ca17948e55b3.84057589",
    "clientKey": "key_66ca17948e561",
  }));

  Future<RemoteJobData?> getJobs() async {
    try {
      Response response = await dio.get(
        'https://jobicy.com/api/v2/remote-jobs?count=20&geo=usa&industry=marketing&tag=seo',
      );

      print(response.data);

      return RemoteJobData.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
