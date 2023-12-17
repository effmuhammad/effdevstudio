import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;
    void navigateTo(String route) {
      if (currentRoute != route) {
        Navigator.pushNamed(context, route);
      } else {
        Navigator.pop(context);
      }
    }

    return Drawer(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: <Widget>[
          ListTile(
            title: const Text('Home'),
            onTap: () => navigateTo('/'),
          ),
          ListTile(
            title: Text('nav.about'.tr()),
            onTap: () => navigateTo('/about'),
          ),
          ListTile(
            title: Text('nav.contact'.tr()),
            onTap: () => navigateTo('/contact'),
          ),
          ListTile(
            title: Text('nav.portfolio'.tr()),
            onTap: () => navigateTo('/portfolio'),
          ),
          ListTile(
            title: Text('nav.contribution'.tr()),
            onTap: () => navigateTo('/contribution'),
          ),
        ],
      ),
    );
  }
}
