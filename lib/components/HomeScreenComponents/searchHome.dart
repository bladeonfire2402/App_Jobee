import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/components/TextField/TextFieldVer2.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Searchhome extends StatelessWidget {
  

  const Searchhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
   
      height: 120,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: ShadInput(
              placeholder: Text("Search a job or position"),
              obscureText: false,
              decoration: ShadDecoration(
                focusedBorder: const ShadBorder(
                padding: EdgeInsets.all(2),
                radius: const BorderRadius.all(Radius.circular(20))
                ),
              ),
            ),
          ),
          SizedBox(width: 4,),
          Expanded(
            flex: 1,
            child: Container(
              height: 200,
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: ColorConstants.textColor3
              ),
              child: Icon(Icons.widgets),
            
            ),
          )
        ],
      ));
  }
}
