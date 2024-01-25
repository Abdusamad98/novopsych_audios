import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novopsych_audios/utils/colors/app_colors.dart';
import 'package:novopsych_audios/utils/images/app_images.dart';
import 'package:novopsych_audios/utils/size/size_utils.dart';

class PlaySongScreen extends StatefulWidget {
  const PlaySongScreen({super.key});

  @override
  State<PlaySongScreen> createState() => _PlaySongScreenState();
}

class _PlaySongScreenState extends State<PlaySongScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: width,
              height: height,
              child: Column(
                children: [
                  Image.asset(
                    AppImages.songBack,
                    width: width,
                  ),
                ],
              ),
            ),
            Positioned(
              right: 10,
              top: 32,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AppImages.menu),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 330.getH(),
                width: width,
                decoration: const ShapeDecoration(
                  color: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 40.getH()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppImages.leftTen),
                        SizedBox(width: 32.getW()),
                        SvgPicture.asset(AppImages.playing),
                        SizedBox(width: 32.getW()),
                        SvgPicture.asset(AppImages.rightTen),
                      ],
                    ),
                    SizedBox(width: 27.getH()),
                    SvgPicture.asset(AppImages.podcast),
                  ],
                ),
              ),
            ),
            const Positioned(
                top: 90,
                left: 20,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Day 3\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Title Goes Here',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
                bottom: 380.getH(),
                child: Column(
                  children: [
                    SizedBox(
                      width: width,
                      child: Slider(
                        value: 0.5,
                        max: 1,
                        divisions: 100,
                        onChanged: (double value) {
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(height: 12.getH()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          '1:24',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF74CCE2),
                            fontSize: 14,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(width: 300.getW()),
                        const Text(
                          '-4:00',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
