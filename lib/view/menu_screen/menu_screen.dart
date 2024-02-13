import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../services/theme/theme_cubit.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool iconBoll = false;
  IconData iconLight = Icons.wb_sunny_rounded;
  IconData iconDark = Icons.nights_stay_rounded;
  bool switchIcon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          ListTile(
            contentPadding:
                const EdgeInsets.only(top: 100, left: 10, right: 25),
            title: const Text(
              "Dark Mode",
            ),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  iconBoll = !iconBoll;
                });
                final cubit = context.read<ThemeCubit>();
                cubit.toggelTheme();
              },
              icon: Icon(iconBoll == false ? iconLight : iconDark),
            ),
          ),
        ]),
      ),
    );
  }
}
