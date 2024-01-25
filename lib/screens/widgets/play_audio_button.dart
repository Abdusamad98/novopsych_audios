import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novopsych_audios/utils/colors/app_colors.dart';
import 'package:novopsych_audios/utils/images/app_images.dart';
import 'package:novopsych_audios/utils/size/size_utils.dart';

class PlayAudioButton extends StatelessWidget {
  const PlayAudioButton({
    super.key,
    required this.isActive,
    required this.onTap,
    required this.text1,
    required this.text2,
    required this.isSelected,
  });

  final bool isActive;
  final bool isSelected;
  final String text1;
  final String text2;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isActive ? 1 : 0.5,
      child: Container(
        height: 64.getH(),
        margin: EdgeInsets.symmetric(vertical: 7.getH()),
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.c_E8E8E8,
              width: 1.2,
            ),
            borderRadius: BorderRadius.circular(10),
            color: isSelected ? AppColors.black : AppColors.white,
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.shade100,
            //     spreadRadius: 4,
            //     blurRadius: 2,
            //     offset: const Offset(2, 2),
            //   )
            // ],
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: isActive ? onTap : null,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 12.getW()),
                  SvgPicture.asset(
                    AppImages.playRound,
                    colorFilter: const ColorFilter.mode(
                      AppColors.c_74CCE2,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 14.getW()),
                  Text(
                    text1,
                    style: TextStyle(
                      color: isSelected ? AppColors.white : AppColors.black,
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  SizedBox(width: 13.getW()),
                  Text(
                    text2,
                    style: TextStyle(
                      color:
                          isSelected ? AppColors.c_949494 : AppColors.c_575757,
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.chevron_right,
                    color: isSelected ? AppColors.white : AppColors.black,
                  ),
                  SizedBox(width: 12.getW()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
