import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novopsych_audios/utils/colors/app_colors.dart';
import 'package:novopsych_audios/utils/images/app_images.dart';
import 'package:novopsych_audios/utils/size/size_utils.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons(
      {super.key, required this.onLeftTap, required this.onRightTap});

  final VoidCallback onLeftTap;
  final VoidCallback onRightTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onLeftTap,
            child: Container(
              color: AppColors.c_74CCE2,
              height: 62.getH(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppImages.assesment,
                    colorFilter: const ColorFilter.mode(
                      AppColors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 10.getW()),
                  const Text(
                    'Assessment',
                    style: TextStyle(
                      color: Colors.white,
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
        ),
        Expanded(
          child: GestureDetector(
            onTap: onRightTap,
            child: Container(
              color: AppColors.black,
              height: 62.getH(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppImages.moreInfo,
                    colorFilter: const ColorFilter.mode(
                      AppColors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 10.getW()),
                  const Text(
                    'More Info',
                    style: TextStyle(
                      color: Colors.white,
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
        )
      ],
    );
  }
}
