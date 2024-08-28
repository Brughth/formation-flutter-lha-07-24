import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/universities/data/models/university_model.dart';
import 'package:flutter_application_2/universities/data/repositories/university_repository.dart';

class UniversityListScreen extends StatefulWidget {
  const UniversityListScreen({super.key});

  @override
  State<UniversityListScreen> createState() => _UniversityListScreenState();
}

class _UniversityListScreenState extends State<UniversityListScreen> {
  late UniversityRepository universityRepository;
  late Future<List<UniversityModel>> _futureUniversities;

  @override
  void initState() {
    universityRepository = UniversityRepository();
    _futureUniversities =
        universityRepository.fetchUniversities(country: 'Cameroon');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Universitiess"),
      ),
      body: FutureBuilder<List<UniversityModel>>(
        future: _futureUniversities,
        builder: (
          BuildContext context,
          AsyncSnapshot<List<UniversityModel>> snapshot,
        ) {
          switch (snapshot.connectionState) {
            case ConnectionState.active:
            case ConnectionState.waiting:
              return const Center(
                child: CupertinoActivityIndicator(
                  radius: 30,
                ),
              );
            case ConnectionState.none:
              return Center(child: Text("${snapshot.error}"));
            case ConnectionState.done:
              var universities = snapshot.data;

              if (universities?.isEmpty ?? true) {
                return const Center(child: Text("No data for this country"));
              }

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    var item = universities[index];
                    return ListTile(
                      title: Text(item.name),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: universities!.length,
                ),
              );

            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
