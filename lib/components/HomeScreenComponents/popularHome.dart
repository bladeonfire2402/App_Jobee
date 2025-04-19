import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Data/job_Data.dart';
import 'package:my_app_test/components/Card/RecommendJobCard.dart';
import 'package:my_app_test/components/Card/popularJobCard.dart';
import 'package:my_app_test/components/TitleComponents/Subtitle.dart';

class Popularhome extends StatelessWidget {
  const Popularhome({Key? key}) : super(key: key);

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
                "Popular Jobs",
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
            height: 300,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,              
              itemBuilder: (context, index) {
                var job = JobData.jobList[index];
                return Popularjobcard(job: job,index: index+1,);
              },
            ),
          ),
        ],
      ),
    );
  }
}
