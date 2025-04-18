import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/components/Card/FeaturedJobCard.dart';
import 'package:my_app_test/components/TitleComponents/Subtitle.dart';
import 'package:my_app_test/components/TitleComponents/mediumTitle.dart';

class FeatureHome extends StatelessWidget {
const FeatureHome({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context){
    final double screenWidth = MediaQuery.of(context).size.width;
    
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Feature Jobs",
              style: GoogleFonts.poppins( // Sử dụng Google Font "Roboto"
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.primaryColor, ), //
              ),
              Subtitle(text: "See all",color: ColorConstants.textColor3,)
            ],
          ),
          SizedBox(height: 10,),

          Container(
            width: screenWidth,
            height: 240 , 
            child: Swiper(
              itemBuilder: (BuildContext context,int index){
                return FeaturedJobCard(
                    jobTitle: "Product Designer",
                    companyName: "Google",
                    companyLogo: ImageConstants.companyLogo,
                    jobTags: ["Design","Fulltime","Junior"],
                    jobSalary: 2000,
                    jobLocation: "Californha,USA",
                    category: "IT",
                    );
                },
              itemCount: 3,
              viewportFraction: 1,
              scale: 0.9,
              pagination: SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                  color: ColorConstants.bgGray,
                  activeColor: ColorConstants.primaryColor,
                ),
              )
           
            ),
          ),


        ],
      ),
    );
  }
}