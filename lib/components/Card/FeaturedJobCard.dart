import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_test/Controller/featuredCart__controller.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/components/ImageComponents/customImage.dart';
import 'package:my_app_test/components/TitleComponents/customTitle.dart';

class FeaturedJobCard extends StatelessWidget {
  final String jobTitle;
  final String companyName;
  final String companyLogo;
  final List<String> jobTags;
  final double jobSalary;
  final String jobLocation;
  final String category;

  // Ensure correct controller initialization
  final featureCardController controller = Get.put(featureCardController());

  FeaturedJobCard({
    super.key,
    required this.jobTitle,
    required this.companyName,
    required this.companyLogo,
    required this.jobTags,
    required this.jobSalary,
    required this.jobLocation,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    // Call setBgCard to update bgCardColor based on category
    controller.setBgCard(category);

    return Obx(() {
      return Stack(
        children:<Widget>[
          Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20
          ),
          decoration: BoxDecoration(
            color: controller.bgCardColor.value,  // Use reactive background color
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ColorConstants.textColor2,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Image(
                      fit: BoxFit.fill,
                      image: CustomNetworkImage(companyLogo),  // Load company logo
                      width: 35,
                      height: 35,
                    ),
                  ),
             
                  // Display job title and company name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTitle(color: ColorConstants.textColor2, fontSize: 18, text: jobTitle,fontWeight: FontWeight.w500,),
                      CustomTitle(color: ColorConstants.thirdlyColor, fontSize: 12, text: companyName, fontWeight: FontWeight.w500),
                    ],
                  ),
                   SizedBox(
                    width: 75,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.bookmark,color: ColorConstants.textColor2,size: 40,)))
                ],
              ),
              SizedBox(height: 25),
              // Display job tags and location
              Row(
                spacing: 10,
                children: jobTags.map((tag) => 
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromRGBO(255, 255, 255, 0.3), // white color with 50% transparency
                  ),
                  child: CustomTitle(text: tag,color: ColorConstants.textColor2,fontSize: 14,fontWeight: FontWeight.w400,))).toList(),
              ),
              
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTitle(color: ColorConstants.textColor2, fontSize: 16, text: '\$${jobSalary.toStringAsFixed(0)}/Month', fontWeight: FontWeight.w300),
                  CustomTitle(color: ColorConstants.textColor2, fontSize: 16, text: '$jobLocation', fontWeight: FontWeight.w300)
                ],
              ),
            ],
          ),
        ),
        ] 
      );
    });
  }
}
