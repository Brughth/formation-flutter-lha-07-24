class UniversityModel {
  final String country;
  final List<String> domains;
  final dynamic stateProvince;
  final List<String> webPages;
  final String name;
  final String alphaTwoCode;

  UniversityModel({
    required this.country,
    required this.domains,
    this.stateProvince,
    required this.webPages,
    required this.name,
    required this.alphaTwoCode,
  });

  factory UniversityModel.fromJson(Map<String, dynamic> json) {
    return UniversityModel(
      country: json['country'],
      domains: List<String>.from(json['domains']),
      webPages: List<String>.from(json['web_pages']),
      name: json['name'],
      alphaTwoCode: json['alpha_two_code'],
    );
  }
}
