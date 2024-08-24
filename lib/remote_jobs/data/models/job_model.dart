// ignore_for_file: public_member_api_docs, sort_constructors_first
class JobModel {
  final int id;
  final String url;
  final String jobSlug;
  final String jobTitle;
  final String companyName;
  final String companyLogo;
  final List<String> jobIndustry;
  final List<String> jobType;
  final String jobGeo;
  final String jobLevel;
  final String jobExcerpt;
  final String jobDescription;
  final String pubDate;
  final String annualSalaryMax;
  final String salaryCurrency;

  JobModel({
    required this.id,
    required this.url,
    required this.jobSlug,
    required this.jobTitle,
    required this.companyName,
    required this.companyLogo,
    required this.jobIndustry,
    required this.jobType,
    required this.jobGeo,
    required this.jobLevel,
    required this.jobExcerpt,
    required this.jobDescription,
    required this.pubDate,
    required this.annualSalaryMax,
    required this.salaryCurrency,
  });

  factory JobModel.fromJson(Map<String, dynamic> map) {
    return JobModel(
      id: map['id'] as int,
      url: map['url'] as String,
      jobSlug: map['jobSlug'] as String,
      jobTitle: map['jobTitle'] as String,
      companyName: map['companyName'] as String,
      companyLogo: map['companyLogo'] as String,
      jobIndustry: List<String>.from((map['jobIndustry'])),
      jobType: List<String>.from((map['jobType'])),
      jobGeo: map['jobGeo'] as String,
      jobLevel: map['jobLevel'] as String,
      jobExcerpt: map['jobExcerpt'] as String,
      jobDescription: map['jobDescription'] as String,
      pubDate: map['pubDate'] as String,
      annualSalaryMax: map['annualSalaryMax'] as String,
      salaryCurrency: map['salaryCurrency'] as String,
    );
  }
}
