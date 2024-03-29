import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_adoption/App/utils/constants.dart';
import 'package:pet_adoption/App/utils/widgets/spacing_widgets.dart';

Row buildAppBar({
  required bool isDrawerOpen,
  required void Function() openDrawer,
  required void Function() closeDrawer,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      isDrawerOpen
          ? IconButton(
              onPressed: () => closeDrawer(),
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: primaryColor,
                size: 25.0,
              ),
            )
          : IconButton(
              onPressed: () {
                WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
                openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: primaryColor,
                size: 25.0,
              ),
            ),
      Column(
        children: <Widget>[
          Text(
            'Location',
            style: GoogleFonts.montserrat(
              fontSize: 14.0,
              fontWeight: FontWeight.w300,
              color: primaryColor,
            ),
          ),
          addVerticalSpace(5.0),
          Row(
            children: <Widget>[
              const Icon(
                Icons.location_pin,
                color: primaryColor,
              ),
              addHorizontalSpace(5.0),
              Text(
                'India',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              addHorizontalSpace(25.0),
            ],
          ),
        ],
      ),
      const CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage('assets/images/Beagle-Dog.png'),
      ),
    ],
  );
}
