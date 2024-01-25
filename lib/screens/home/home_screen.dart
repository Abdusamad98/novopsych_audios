import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novopsych_audios/screens/assessment/assessment_screen.dart';
import 'package:novopsych_audios/screens/free_demo/free_demo_screen.dart';
import 'package:novopsych_audios/screens/home/widgets/home_button.dart';
import 'package:novopsych_audios/screens/paid_demo/paid_demo_screen.dart';
import 'package:novopsych_audios/utils/colors/app_colors.dart';
import 'package:novopsych_audios/utils/images/app_images.dart';
import 'package:novopsych_audios/utils/size/size_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
        elevation: 0,
        backgroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: width,
              height: 10.getH(),
            ),
            Image.asset(
              AppImages.logo,
              width: 160.getW(),
              height: 160.getW(),
            ),
            SizedBox(height: 29.getH()),
            const Text.rich(
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
            SizedBox(height: 15.getH()),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna. ',
              style: TextStyle(
                color: Color(0xFF575757),
                fontSize: 16,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            SizedBox(height: 30.getH()),
            Row(
              children: [
                HomeButton(
                  text: "Demo",
                  isSelected: selectedIndex == 1,
                  iconPath: AppImages.play,
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const FreeDemoScreen();
                          },
                        ),
                      );
                    });
                  },
                ),
                SizedBox(width: 18.getW()),
                HomeButton(
                  text: "Assessment",
                  isSelected: selectedIndex == 2,
                  iconPath: AppImages.assesment,
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AssessmentScreen();
                        },
                      ),
                    );
                  },
                )
              ],
            ),
            SizedBox(height: 18.getH()),
            Row(
              children: [
                HomeButton(
                  text: "Purchase",
                  isSelected: selectedIndex == 3,
                  iconPath: AppImages.purchase,
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const PaidDemoScreen();
                        },
                      ),
                    );
                  },
                ),
                SizedBox(width: 18.getW()),
                HomeButton(
                  text: "Restore",
                  isSelected: selectedIndex == 4,
                  iconPath: AppImages.restore,
                  onTap: () {
                    setState(() {
                      selectedIndex = 4;
                    });
                  },
                )
              ],
            ),
            SizedBox(height: 18.getH()),
            HomeButton(
              text: "More Info",
              isSelected: selectedIndex == 5,
              iconPath: AppImages.moreInfo,
              onTap: () {
                setState(() {
                  selectedIndex = 5;
                });
              },
            ),
            SizedBox(height: 30.getH()),
          ],
        ),
      ),
    );
  }
}
