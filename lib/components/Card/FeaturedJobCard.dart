import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_test/Controller/featuredCart__controller.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/components/ImageComponents/customImage.dart';

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
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: controller.bgCardColor.value,  // Use reactive background color
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Row(
              children: [
                // Assuming `CustomNetworkImage` returns a valid ImageProvider
                Image(
                  fit: BoxFit.fill,
                  image: CustomNetworkImage(companyLogo),  // Load company logo
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 10),
                // Display job title and company name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(jobTitle, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(companyName),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            // Display job tags and location
            Row(
              children: jobTags.map((tag) => Chip(label: Text(tag))).toList(),
            ),
            SizedBox(height: 5),
            Text('Salary: \$${jobSalary.toStringAsFixed(2)}'),
            SizedBox(height: 5),
            Text('Location: $jobLocation'),
          ],
        ),
      );
    });
  }
}
