import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_adoption/App/blocs/themes_bloc/theme_bloc.dart';
import 'package:pet_adoption/App/utils/widgets/spacing_widgets.dart';

class DrawerAppBar extends StatelessWidget {
  const DrawerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/Beagle-Dog.png'),
          radius: 26.0,
        ),
        addHorizontalSpace(18.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Shashi Naik',
              style: GoogleFonts.montserrat(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            addVerticalSpace(5.0),
            Text(
              'Active Status',
              style: GoogleFonts.montserrat(
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
                color: Colors.grey[200],
              ),
            ),
          ],
        ),
        addHorizontalSpace(50),
        BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return Switch(
                value: state.switchValue,
                onChanged: (value) {
                  value
                      ? context.read<ThemeBloc>().add(SwitchOnEvent())
                      : context.read<ThemeBloc>().add(SwitchOffEvent());
                });
          },
        )
      ],
    );
  }
}
