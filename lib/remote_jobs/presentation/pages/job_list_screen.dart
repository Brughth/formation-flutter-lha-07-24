import 'package:flutter/material.dart';
import 'package:flutter_application_2/remote_jobs/data/models/remote_job_data.dart';
import 'package:flutter_application_2/remote_jobs/data/repositories/job_repository.dart';

class JobListScreen extends StatefulWidget {
  const JobListScreen({super.key});

  @override
  State<JobListScreen> createState() => _JobListScreenState();
}

class _JobListScreenState extends State<JobListScreen> {
  late JobRepository repository;
  late Future<RemoteJobData?> futureJobs;

  @override
  void initState() {
    repository = JobRepository();
    futureJobs = repository.getJobs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Remote Jobs"),
      ),
      body: FutureBuilder<RemoteJobData?>(
        future: futureJobs,
        builder:
            (BuildContext context, AsyncSnapshot<RemoteJobData?> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(
                child: Text("${snapshot.error}"),
              );

            case ConnectionState.active:
            case ConnectionState.waiting:
              return const Center(
                child: LinearProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.data?.jobs.isEmpty ?? true) {
                return const Center(
                  child: Text("No job found"),
                );
              }
              return ListView.separated(
                itemCount: snapshot.data!.jobCount.bitLength,
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, index) {
                  var job = snapshot.data!.jobs[index];
                  return ListTile(
                    title: Text(job.jobTitle),
                  );
                },
              );
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
