import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Data/job_Data.dart';
import 'package:my_app_test/models/JobModels/JobModel.dart';
import 'package:my_app_test/screens/JobDetailScreen/JobDetailScreen.dart';

class JobLayoutScreen extends StatelessWidget {
  JobLayoutScreen({Key? key}) : super(key: key);

  final job = JobData.jobList[1];

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: JobDetailScreen(job: job)
      );
  }
}
