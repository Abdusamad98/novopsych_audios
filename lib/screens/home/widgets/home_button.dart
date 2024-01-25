import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novopsych_audios/utils/colors/app_colors.dart';
import 'package:novopsych_audios/utils/size/size_utils.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
    required this.isSelected,
    required this.iconPath,
    required this.onTap,
    required this.text,
  });

  final bool isSelected;
  final String iconPath;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Ink(
          height: 111.getH(),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: isSelected ? AppColors.c_74CCE2 : AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  spreadRadius: 7,
                  blurRadius: 4,
                  offset: const Offset(4, 2),
                )
              ]),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: onTap,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    iconPath,
                    colorFilter: ColorFilter.mode(
                      isSelected ? AppColors.white : AppColors.c_74CCE2,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(height: 4.getH()),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
