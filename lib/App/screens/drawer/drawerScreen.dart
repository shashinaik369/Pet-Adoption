import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_adoption/App/blocs/themes_bloc/theme_bloc.dart';
import 'package:pet_adoption/App/utils/constants.dart';
import 'package:pet_adoption/App/utils/widgets/spacing_widgets.dart';

import 'components/app_bar.dart';
import 'components/menu_items.dart';
import 'components/setting_logout_menu.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final color = state.switchValue ? Color(0xFF212121):primaryColor;
        return Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: color ,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: <Widget>[
                addVerticalSpace(60.0),
                const DrawerAppBar(),
                const Spacer(),
                MenuItems(color: color,),
                const Spacer(),
                const SettingLogOutMenus(),
                addVerticalSpace(50.0),
              ],
            ),
          ),
        );
      },
    );
  }
}
