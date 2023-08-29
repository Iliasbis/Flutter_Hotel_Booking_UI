import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../util/responsive/MediumText.dart';
import '../util/widgets/OptionButtons.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(CupertinoIcons.back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const MediumText(
                  text: "Account Settings",
                  font: FontWeight.w700,
                  color: Colors.black,
                ),
                const SizedBox(height: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const OptionButtons(
                        icon: CupertinoIcons.person, text: "My Profile")),
                const SizedBox(height: 16),
                const OptionButtons(
                    icon: CupertinoIcons.bell, text: "Notifications"),
                const SizedBox(height: 16),
                const OptionButtons(
                    icon: CupertinoIcons.money_euro,
                    text: "Paymenets and Payouts"),
                const SizedBox(height: 16),
                const SizedBox(height: 16),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MediumText(
                  text: "Preferences",
                  font: FontWeight.w700,
                  color: Colors.black,
                ),
                SizedBox(height: 20),
                OptionButtons(icon: CupertinoIcons.globe, text: "Language"),
                SizedBox(height: 16),
                OptionButtons(
                    icon: CupertinoIcons.lock, text: "Privacy Settings"),
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
    );
  }
}
