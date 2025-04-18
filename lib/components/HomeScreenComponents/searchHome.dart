import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Searchhome extends StatelessWidget {
  const Searchhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstants.bgGray,
                borderRadius: BorderRadius.circular(8),  // Apply border radius here
              ),
              child: ShadInput(
                cursorWidth: 1,
                placeholder: Text("Search a job or position",style: TextStyle(
                  fontSize: 16
                ),),
                obscureText: false,
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search,size: 20,), // Sử dụng icon được truyền vào hoặc mặc định
                ),
                decoration: ShadDecoration(
                  border:  ShadBorder(merge: false),
                  color: Colors.transparent, // Transparent color for inner decoration
                  focusedBorder: ShadBorder(
                    merge: false,
                    padding: EdgeInsets.all(2),
                  )
                ),
              ),
            ),
          ),
   
          Expanded(
            flex: 1,
            child: Container(
              height: 60,
              padding: const EdgeInsets.all(10),
              decoration:  BoxDecoration(
                color: ColorConstants.bgGray,
                borderRadius: BorderRadius.circular(8),  // Correct wa
              ),
              child: Icon(Icons.sort,size: 22,),
            ),
          ),
        ],
      ),
    );
  }
}
