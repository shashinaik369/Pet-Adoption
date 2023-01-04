import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_adoption/App/blocs/pets_bloc/pets_bloc.dart';
import 'package:pet_adoption/App/screens/details/details.dart';
import 'package:pet_adoption/App/screens/home/components/pet_card.dart';
import '../../../utils/constants.dart';
import '../../../utils/widgets/spacing_widgets.dart';

class AdoptedPets extends StatelessWidget {
  Color color;
  AdoptedPets({super.key,required this.color});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetsBloc, PetsState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              color: color,
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                      const FaIcon(
                        FontAwesomeIcons.paw,
                        color: Colors.white,
                      ),
                      addHorizontalSpace(15.0),
                      Text(
                        'Adopted Pets',
                        style: GoogleFonts.montserrat(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  state.adoptedPets.isEmpty
                      ? Text(
                          'No Pets Adopted',
                          style: GoogleFonts.montserrat(
                            color: primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                          ),
                        )
                      : Expanded(
                          child: ListView.builder(
                            itemCount: state.adoptedPets.length,
                            // pets.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => PetDetailsPage(
                                      pet: state.adoptedPets[index],
                                      //pets[index],
                                    ),
                                  ),
                                ),
                                child: PetCard(
                                  pet: state.adoptedPets[index],
                                  // pets[index],
                                ),
                              );
                            },
                          ),
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
    ;
  }
}
