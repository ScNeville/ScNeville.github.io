import 'package:flutter/material.dart';
import '../../repositories/firebase_auth.dart';

import '../../widgets/button.dart';
import '../../widgets/icon_circle.dart';
import '../../widgets/theme_switch.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text('Settings'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const ProfileCard(),
              const SizedBox(
                height: 5,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: settingsItems.length,
                      itemBuilder: (context, index) {
                        if (index == 0 ||
                            settingsItems[index].category !=
                                settingsItems[index - 1].category) {
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  settingsItems[index].category,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ListTile(
                                  leading: Icon(
                                    settingsItems[index].icon,
                                  ),
                                  trailing: settingsItems[index].trailing,
                                  title: Text(settingsItems[index].title),
                                  onTap: () => settingsItems[index].onTap!(),
                                ),
                              ]);
                        }
                        return ListTile(
                          leading: Icon(
                            settingsItems[index].icon,
                          ),
                          trailing: settingsItems[index].trailing,
                          title: Text(settingsItems[index].title),
                          onTap: () => settingsItems[index].onTap!(),
                        );
                      }))
            ],
          ),
        ));
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            IconCircle(
              icon: Icons.person,
              radius: 30,
              borderThickness: 2,
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
                ),
                SizedBox(
                  height: 5,
                ),
                Button(
                  text: "Edit Profile",
                  borderRadius: 5,
                  width: 100,
                  height: 30,
                  backgroundColor: Colors.transparent,
                  borderWidth: 1,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsItem {
  final String title;
  final String category;
  final IconData icon;
  final Widget? trailing;
  final Function()? onTap;

  SettingsItem({
    required this.title,
    required this.category,
    required this.icon,
    this.trailing,
    this.onTap,
  });
}

List<SettingsItem> settingsItems = [
  SettingsItem(
    title: "Dark Mode",
    category: "Theme",
    icon: Icons.dark_mode,
    trailing: const ThemeSwitch(),
    onTap: () {},
  ),
  SettingsItem(
    title: "Personal Information",
    category: "Account",
    icon: Icons.language,
    onTap: () {},
  ),
  SettingsItem(
    title: "Change Password ",
    category: "Account",
    icon: Icons.help,
    onTap: () {},
  ),
  SettingsItem(
    title: "Sign Out",
    category: "Account",
    icon: Icons.notifications,
    onTap: () {
      FirebaseAuthentication().signOut();
    },
  ),
  SettingsItem(
    title: "Touch ID",
    category: "Security",
    icon: Icons.help,
    trailing: const ThemeSwitch(),
    onTap: () {},
  ),
  SettingsItem(
    title: "Language",
    category: "Security",
    icon: Icons.language,
    onTap: () {},
  ),
  SettingsItem(
    title: "Help",
    category: "Help",
    icon: Icons.help,
    onTap: () {},
  ),
];
