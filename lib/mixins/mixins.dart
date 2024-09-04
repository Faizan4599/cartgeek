import 'package:cartgeek/constant/common_colors.dart';
import 'package:flutter/material.dart';

mixin widgets {
  Widget userNameImageInfo(String imgPath, String name) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: CommonColors.primary,
            child: CircleAvatar(
              // backgroundColor: CommonColors.primary,
              radius: 28,
              backgroundImage: AssetImage(imgPath),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome"),
              Text(
                name,
                style: TextStyle(fontSize: 18, color: CommonColors.primary),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget circularBtn(Widget ic,
      {required String title,
      required Function()? onTap,
      required Color containerColor,
      required double? width}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadiusDirectional.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ic,
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
