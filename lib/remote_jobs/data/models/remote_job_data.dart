import 'package:flutter_application_2/remote_jobs/data/models/job_model.dart';

class RemoteJobData {
  final String apiVersion;
  final String documentationUrl;
  final String friendlyNotice;
  final int jobCount;
  final String xRayHash;
  final String clientKey;
  final String lastUpdate;
  final List<JobModel> jobs;

  RemoteJobData({
    required this.apiVersion,
    required this.documentationUrl,
    required this.friendlyNotice,
    required this.jobCount,
    required this.xRayHash,
    required this.clientKey,
    required this.lastUpdate,
    required this.jobs,
  });

  factory RemoteJobData.fromJson(Map<String, dynamic> map) {
    return RemoteJobData(
      apiVersion: map['apiVersion'] as String,
      documentationUrl: map['documentationUrl'] as String,
      friendlyNotice: map['friendlyNotice'] as String,
      jobCount: map['jobCount'] as int,
      xRayHash: map['xRayHash'] as String,
      clientKey: map['clientKey'] as String,
      lastUpdate: map['lastUpdate'] as String,
      jobs: List<JobModel>.from(
        (map['jobs'] as List<int>).map<JobModel>(
          (x) => JobModel.fromJson(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}
