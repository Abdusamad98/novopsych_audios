import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novopsych_audios/models/song_model.dart';
import 'package:novopsych_audios/screens/assessment/assessment_screen.dart';
import 'package:novopsych_audios/screens/free_demo/widgets/bottom_buttons.dart';
import 'package:novopsych_audios/screens/play_song/play_song_screen.dart';
import 'package:novopsych_audios/screens/widgets/assessment_button.dart';
import 'package:novopsych_audios/screens/widgets/play_audio_button.dart';
import 'package:novopsych_audios/screens/home/widgets/home_button.dart';
import 'package:novopsych_audios/utils/colors/app_colors.dart';
import 'package:novopsych_audios/utils/images/app_images.dart';
import 'package:novopsych_audios/utils/size/size_utils.dart';

class FreeDemoScreen extends StatefulWidget {
  const FreeDemoScreen({super.key});

  @override
  State<FreeDemoScreen> createState() => _FreeDemoScreenState();
}

class _FreeDemoScreenState extends State<FreeDemoScreen> {
  int selectedIndex = 0;

  List<SongModel> freeSongs = [
    ...List.generate(
      10,
      (index) => SongModel(
        dayText: "Day ${index + 1}",
        songTitle: "Title Goes here",
        path: "",
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            width: width,
            color: AppColors.white,
            child: const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome to\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'Reductinn',
                    style: TextStyle(
                      color: Color(0xFF74CCE2),
                      fontSize: 36,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w900,
                      height: 0,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 21.getH()),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                ...List.generate(
                  freeSongs.length,
                  (index) => PlayAudioButton(
                    isSelected: selectedIndex == index + 1,
                    isActive: index < 4,
                    onTap: () {
                      setState(() {
                        selectedIndex = index + 1;
                      });

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const PlaySongScreen();
                          },
                        ),
                      );
                    },
                    text1: freeSongs[index].dayText,
                    text2: freeSongs[index].songTitle,
                  ),
                ),
              ],
            ),
          ),
          BottomButtons(
            onLeftTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const AssessmentScreen();
                  },
                ),
              );
            },
            onRightTap: () {},
          )
        ],
      ),
    );
  }
}
