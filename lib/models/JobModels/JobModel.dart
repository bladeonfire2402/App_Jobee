class JobModel {
  final String jobId; // A non-nullable field for the Job ID.
  String? title; // An optional field for the job title, it can be null.
  String? jobDescription;
  String? price; // An optional field for the job price, it can be null.
  String? companyLogo;
  String? companyName;
  String? salary;
  // Constructor for the JobModel class, which initializes the jobId as required.
  JobModel({required this.jobId, this.title, this.price, this.companyLogo, this.companyName,this.jobDescription,this.salary});
}
