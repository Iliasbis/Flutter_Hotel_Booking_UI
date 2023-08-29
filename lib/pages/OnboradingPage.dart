import 'package:flutter/material.dart';
import 'package:hotel_booking/pages/MainPage.dart';
import 'package:hotel_booking/util/responsive/ExtraSmallText.dart';
import 'package:hotel_booking/util/responsive/LargeText.dart';
import 'package:hotel_booking/util/widgets/DefaultButton.dart';
import 'package:hotel_booking/util/widgets/SquareImage.dart';

class OnboradingPage extends StatelessWidget {
  const OnboradingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.04, vertical: height * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: height * 0.03),
                    width: width,
                    height: height * 0.55,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SquareImage(imagePath: "lib/images/hotel1.jpg"),
                            SquareImage(imagePath: "lib/images/hotel2.jpg"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SquareImage(imagePath: "lib/images/hotel3.jpg"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SquareImage(imagePath: "lib/images/hotel4.jpg"),
                            SquareImage(imagePath: "lib/images/hotel5.jpg"),
                          ],
                        ),
                      ],
                    )),
                SizedBox(height: height * 0.040),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.034),
                  child: Column(
                    children: [
                      LargeText(
                        text: "Let’s Find Your Sweet & Dream Place ",
                        font: FontWeight.w600,
                      ),
                      const SizedBox(height: 9),
                      ExtraSmallText(
                        text:
                            "Get the opportunity to stay that you dream of at an affordable price",
                        font: FontWeight.w600,
                      ),
                      SizedBox(height: height * 0.09),
                      DefaultButton(
                        clickedButton: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return MainPage();
                            },
                          ));
                        },
                        text: "Let's go",
                        width: width,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
