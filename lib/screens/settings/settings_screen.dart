import 'package:auto_route/auto_route.dart';
import 'package:fintrack_app/screens/settings/widgets/settings_tile.dart';
import 'package:fintrack_app/theme/colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Settings',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white),
                ),
              ),
              SizedBox(height: 15),
              SettingsTile(
                  title: 'Share with friends',
                  icon: 'assets/images/settings/share.svg',
                  onTap: () {}),
              SizedBox(height: 15),
              SettingsTile(
                  title: 'Subscription info',
                  icon: 'assets/images/settings/subs.svg',
                  onTap: () {}),
              SizedBox(height: 15),
              SettingsTile(
                  title: 'Terms of use',
                  icon: 'assets/images/settings/terms.svg',
                  onTap: () {}),
              SizedBox(height: 15),
              SettingsTile(
                  title: 'Privacy Policy',
                  icon: 'assets/images/settings/privacy.svg',
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
