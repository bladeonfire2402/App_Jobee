import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_test/Controller/featuredCart__controller.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/components/ImageComponents/customImage.dart';
import 'package:my_app_test/components/TitleComponents/customTitle.dart';
import 'package:my_app_test/models/JobModels/JobModel.dart';

class Popularjobcard extends StatefulWidget {
  final JobModel job;
  final int index;

  Popularjobcard({super.key, required this.job, required this.index});

  @override
  _PopularjobcardState createState() => _PopularjobcardState();
}

class _PopularjobcardState extends State<Popularjobcard> {
  Color? bgColor = ColorConstants.thirdlyColor;
  late int descion;



  // Handle background color change based on decision
  Color handleBgColor(int descion) {
    switch (descion) {
      case 1:
        return ColorConstants.nicetryColor;
      case 2:
        return ColorConstants.fithyColor;
      case 3:
        return ColorConstants.sixtyColor;
      case 4:
        return ColorConstants.meomeoColor;
      case 5:
        return ColorConstants.bruhColor;
      default:
        return ColorConstants.fourthlyColor;
    }
  }

  // Determine decision based on index
  int handleDesicion(int index) {
    if (index > 5) {
      return index % 5;
    } else {
      return index;
    }
  }

  @override
  void initState() {
    super.initState();
    // Set the decision value based on the index and update background color
    descion = handleDesicion(widget.index);
    bgColor = handleBgColor(descion);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            gradient:  LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
              const Color.fromARGB(255, 202, 238, 255),const Color.fromARGB(255, 82, 187, 252)
            ])
          ),
          child: Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                width: 40,
                height: 40,
                image: CustomNetworkImage(widget.job.companyLogo)),
              SizedBox(height: 1,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CustomTitle(
                  color: ColorConstants.textColor, 
                  fontSize: 17, text: widget.job.title,
                  fontWeight: FontWeight.w400),
                CustomTitle(
                  color: const Color.fromARGB(255, 114, 114, 114), 
                  fontSize: 12, text: widget.job.companyName,
                  fontWeight: FontWeight.w200),
                ],
              ),

              SizedBox(width: 20,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CustomTitle(
                  color: ColorConstants.textColor, 
                  fontSize: 16, text: widget.job.salary,
                  fontWeight: FontWeight.w400),
                CustomTitle(
                  color: const Color.fromARGB(255, 114, 114, 114), 
                  fontSize: 12, text: "USA",
                  fontWeight: FontWeight.w400),

              ],),

            ],
          ),
        ),
      ],
    );
  }
}
