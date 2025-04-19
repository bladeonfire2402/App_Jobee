import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Data/job_Data.dart';
import 'package:my_app_test/components/Card/RecommendJobCard.dart';
import 'package:my_app_test/components/TitleComponents/Subtitle.dart';

class RecommendHome extends StatelessWidget {
  const RecommendHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Recommend Jobs",
                style: GoogleFonts.poppins(
                  // Sử dụng Google Font "Roboto"
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.primaryColor,
                ), //
              ),
              Subtitle(text: "See all", color: ColorConstants.textColor3),
            ],
          ),

          SizedBox(height: 15,),

          Container(
            height: 200,
            alignment: Alignment.centerLeft,
            child: ListView.builder(
              itemCount: JobData.jobList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var job = JobData.jobList[index];
                return Recommendjobcard(job: job,index: index+1,);
              },
            ),
          ),
        ],
      ),
    );
  }
}
