import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novopsych_audios/models/song_model.dart';
import 'package:novopsych_audios/screens/free_demo/widgets/bottom_buttons.dart';
import 'package:novopsych_audios/screens/widgets/assessment_button.dart';
import 'package:novopsych_audios/screens/widgets/play_audio_button.dart';
import 'package:novopsych_audios/screens/home/widgets/home_button.dart';
import 'package:novopsych_audios/utils/colors/app_colors.dart';
import 'package:novopsych_audios/utils/images/app_images.dart';
import 'package:novopsych_audios/utils/size/size_utils.dart';

class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({super.key});

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  int selectedIndex = 0;

  SingingCharacter? _character = SingingCharacter.yes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Assessment',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppImages.menu),
          ),
          SizedBox(
            width: 7.getW(),
          )
        ],
        centerTitle: true,
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '1. ',
                  style: TextStyle(
                    color: AppColors.c_575757,
                    fontSize: 32,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Because of your tinnitus is it difficult for you to concentrate?',
                        style: TextStyle(
                          color: AppColors.c_575757,
                          fontSize: 32,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 37.getH()),
                      Row(
                        children: [
                          Radio<SingingCharacter>(
                            value: SingingCharacter.yes,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                          Text(
                            'Yes',
                            style: TextStyle(
                              color: _character! == SingingCharacter.yes
                                  ? AppColors.black
                                  : AppColors.c_575757,
                              fontSize: 20,
                              fontFamily: 'Lato',
                              fontWeight: _character! == SingingCharacter.yes
                                  ? FontWeight.w700
                                  : FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<SingingCharacter>(
                            value: SingingCharacter.sometimes,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                          Text(
                            'Sometimes',
                            style: TextStyle(
                              color: _character! == SingingCharacter.sometimes
                                  ? AppColors.black
                                  : AppColors.c_575757,
                              fontSize: 20,
                              fontFamily: 'Lato',
                              fontWeight:
                                  _character! == SingingCharacter.sometimes
                                      ? FontWeight.w700
                                      : FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<SingingCharacter>(
                            value: SingingCharacter.no,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                          Text(
                            'No',
                            style: TextStyle(
                              color: _character! == SingingCharacter.no
                                  ? AppColors.black
                                  : AppColors.c_575757,
                              fontSize: 20,
                              fontFamily: 'Lato',
                              fontWeight: _character! == SingingCharacter.no
                                  ? FontWeight.w700
                                  : FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 70.getH()),
            AssessmentButton(
              onTap: () {},
              text: "Finish",
            ),
          ],
        ),
      ),
    );
  }
}

enum SingingCharacter {
  yes,
  sometimes,
  no,
}
