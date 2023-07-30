import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paydai/widgets/settingsWidgets/editProfileButton.dart';
import 'package:paydai/widgets/settingsWidgets/settingsListTile.dart';
import 'package:paydai/widgets/sharedWidgets/usernameAvatar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                const UsernameAvatar(
                  letter: 'O',
                  home: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Oluwatomiwa Ekwunife',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.verified,
                      color: Colors.green,
                      size: 12,
                    ),
                  ],
                ),
                Text(
                  '@elisheba07',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                EditProfileButton(
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 5),
                    child: Column(
                      children: [
                        SettingsListTile(
                          icon: CupertinoIcons.gift_fill,
                          title: 'Refer & Earn',
                          subtitle: 'Invite your friends and get a bonus',
                          onTap: () {},
                        ),
                        SettingsListTile(
                          icon: Icons.headset_mic_sharp,
                          title: 'Help Center',
                          subtitle: 'Have an issue? Speak to our team',
                          onTap: () {},
                        ),
                        SettingsListTile(
                          icon: Icons.currency_exchange,
                          title: 'Rate & Fees',
                          subtitle: 'See Exchange Rate and Fees',
                          onTap: () {},
                        ),
                        SettingsListTile(
                          icon: CupertinoIcons.slash_circle_fill,
                          title: 'Limits',
                          subtitle: 'See your transaction limits',
                          onTap: () {},
                        ),
                        SettingsListTile(
                          icon: Icons.star_border_purple500_rounded,
                          title: 'Beneficiaries',
                          onTap: () {},
                        ),
                        SettingsListTile(
                          icon: Icons.key,
                          title: 'Account Security',
                          onTap: () {},
                        ),
                        SettingsListTile(
                          icon: Icons.logout,
                          title: 'Logout',
                          onTap: () {},
                        ),
                        SettingsListTile(
                          icon: Icons.delete_outline,
                          title: 'Delete Account',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Version 3.7.1',
                  style: TextStyle(
                    color: Colors.grey[600],
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
