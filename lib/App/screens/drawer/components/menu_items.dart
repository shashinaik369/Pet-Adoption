import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_adoption/App/screens/drawer/historypage/adoptedpets.dart';
import 'package:pet_adoption/App/utils/widgets/spacing_widgets.dart';

class MenuItems extends StatelessWidget {
  Color color;
  MenuItems({super.key,required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AdoptedPets(color:color)));
            },
            child: Row(
              children: <Widget>[
                const FaIcon(
                  FontAwesomeIcons.paw,
                  color: Colors.white,
                ),
                addHorizontalSpace(15.0),
                Text(
                  'Adopted Pets',
                  style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[200],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Row(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.solidEnvelopeOpen,
                color: Colors.grey[400],
              ),
              addHorizontalSpace(15.0),
              Text(
                'Donation',
                style: GoogleFonts.montserrat(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Row(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.plus,
                color: Colors.grey[400],
              ),
              addHorizontalSpace(15.0),
              Text(
                'Add pet',
                style: GoogleFonts.montserrat(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Row(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.solidHeart,
                color: Colors.grey[400],
              ),
              addHorizontalSpace(15.0),
              Text(
                'Favorites',
                style: GoogleFonts.montserrat(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Row(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.solidEnvelope,
                color: Colors.grey[400],
              ),
              addHorizontalSpace(15.0),
              Text(
                'Messages',
                style: GoogleFonts.montserrat(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Row(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.solidUser,
                color: Colors.grey[400],
              ),
              addHorizontalSpace(15.0),
              Text(
                'Profile',
                style: GoogleFonts.montserrat(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
