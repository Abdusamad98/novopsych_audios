import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novopsych_audios/models/song_model.dart';
import 'package:novopsych_audios/screens/free_demo/widgets/bottom_buttons.dart';
import 'package:novopsych_audios/screens/play_song/play_song_screen.dart';
import 'package:novopsych_audios/screens/widgets/assessment_button.dart';
import 'package:novopsych_audios/screens/widgets/play_audio_button.dart';
import 'package:novopsych_audios/screens/home/widgets/home_button.dart';
import 'package:novopsych_audios/utils/colors/app_colors.dart';
import 'package:novopsych_audios/utils/images/app_images.dart';
import 'package:novopsych_audios/utils/size/size_utils.dart';

class PaidDemoScreen extends StatefulWidget {
  const PaidDemoScreen({super.key});

  @override
  State<PaidDemoScreen> createState() => _PaidDemoScreenState();
}

class _PaidDemoScreenState extends State<PaidDemoScreen> {

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
        title: const Text(
          'Reductinn',
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
      body: Column(
        children: [
          AssessmentButton(
            onTap: () {},
            text: "Pre-Assessment",
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                ...List.generate(
                  freeSongs.length,
                      (index) => PlayAudioButton(
                    isSelected: selectedIndex == index + 1,
                    isActive: true,
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
                )
              ],
            ),
          ),
          AssessmentButton(
            onTap: () {},
            text: "Post Assessment",
          ),
        ],
      ),
    );
  }
}
