import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novopsych_audios/utils/colors/app_colors.dart';
import 'package:novopsych_audios/utils/size/size_utils.dart';

class AssessmentButton extends StatelessWidget {
  const AssessmentButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15
      ),
      width: width,
      color: AppColors.white,
      child: Center(
        child: SizedBox(
          height: 54.getH(),
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: AppColors.c_74CCE2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60))),
            onPressed: onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
