import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_test/Controller/featuredCart__controller.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/components/ImageComponents/customImage.dart';
import 'package:my_app_test/components/TitleComponents/customTitle.dart';
import 'package:my_app_test/models/JobModels/JobModel.dart';

class Recommendjobcard extends StatefulWidget {
  final JobModel job;
  final int index;

  Recommendjobcard({super.key, required this.job, required this.index});

  @override
  _RecommendjobcardState createState() => _RecommendjobcardState();
}

class _RecommendjobcardState extends State<Recommendjobcard> {
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
          margin: const EdgeInsets.only(right: 15),
          width: 165,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Column(
            spacing: 7,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                width: 45,
                height: 45,
                image: CustomNetworkImage(widget.job.companyLogo)),
              SizedBox(height: 3,),
              CustomTitle(
                color: ColorConstants.textColor, 
                fontSize: 17, text: widget.job.title,
                 fontWeight: FontWeight.w400),
              CustomTitle(
                color: ColorConstants.textColor3, 
                fontSize: 12, text: widget.job.companyName,
                 fontWeight: FontWeight.w200),
              SizedBox(height: 5,),
              CustomTitle(
                color: ColorConstants.textColor, 
                fontSize: 16, text: widget.job.salary,
                fontWeight: FontWeight.w400),
            ],
          ),
        ),
      ],
    );
  }
}
