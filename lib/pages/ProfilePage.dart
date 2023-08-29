import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/pages/SettingsPage.dart';
import 'package:hotel_booking/util/responsive/MediumText.dart';
import 'package:hotel_booking/util/responsive/SmallText.dart';
import 'package:hotel_booking/util/widgets/OptionButtons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SettingsPage();
                      },
                    ));
                  },
                  icon: const Icon(
                    CupertinoIcons.settings,
                    size: 28,
                  ))),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("lib/images/profile3.jpg"),
                            ),
                          ),
                        ),
                        const SizedBox(height: 14),
                        const MediumText(
                          text: "ILias Bissoufa",
                          font: FontWeight.w700,
                        ),
                        const SizedBox(height: 8),
                        const SmallText(
                          text: "Casablanca, Morocco",
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 24),
                          width: width - 28,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  MediumText(
                                      text: "1",
                                      color: Colors.blue,
                                      font: FontWeight.w600),
                                  SizedBox(height: 5),
                                  SmallText(
                                      text: "Transaction", color: Colors.grey)
                                ],
                              ),
                              Column(
                                children: [
                                  MediumText(
                                      text: "10",
                                      color: Colors.blue,
                                      font: FontWeight.w600),
                                  SizedBox(height: 5),
                                  SmallText(text: "Review", color: Colors.grey)
                                ],
                              ),
                              Column(
                                children: [
                                  MediumText(
                                      text: "4",
                                      color: Colors.blue,
                                      font: FontWeight.w600),
                                  SizedBox(height: 5),
                                  SmallText(
                                      text: "Bookings", color: Colors.grey)
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MediumText(
                      text: "Option",
                      font: FontWeight.w700,
                      color: Colors.black,
                    ),
                    SizedBox(height: 20),
                    OptionButtons(
                        icon: CupertinoIcons.heart, text: "My Favorite"),
                    SizedBox(height: 16),
                    OptionButtons(
                        icon: CupertinoIcons.time, text: "Transaction"),
                    SizedBox(height: 16),
                    OptionButtons(
                        icon: CupertinoIcons.money_dollar_circle,
                        text: "My Cupon"),
                    SizedBox(height: 16),
                    OptionButtons(
                      icon: Icons.logout_rounded,
                      text: "Log Out",
                      size: 0,
                      color: Colors.red,
                    ),
                    SizedBox(height: 16),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
