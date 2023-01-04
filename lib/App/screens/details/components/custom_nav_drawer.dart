import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_adoption/App/blocs/pets_bloc/pets_bloc.dart';
import 'package:pet_adoption/App/models/pet_model.dart';
import 'package:pet_adoption/App/utils/constants.dart';
import 'package:pet_adoption/App/utils/widgets/sized_box.dart';
import 'package:confetti/confetti.dart';

class CustomBottomBar extends StatefulWidget {
  Pet adoptme;
  bool isPlaying;
  ConfettiController controller;
  CustomBottomBar(
      {super.key,
      required this.adoptme,
      required this.isPlaying,
      required this.controller});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  showdialogue(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: primaryColor,
            title: Text(
              'You’ve now adopted ${widget.adoptme.name}',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(
        28.0,
      ),
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(30.0),
          right: Radius.circular(30.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const BorderBox(
            width: 60.0,
            height: 50.0,
            padding: EdgeInsets.all(5.0),
            color: primaryColor,
            child: Icon(
              Icons.favorite_outline_rounded,
              color: Colors.white,
            ),
          ),
          BlocBuilder<PetsBloc, PetsState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  if (state.adoptedPets.contains(widget.adoptme)) {
                  } else {
                 
                    context.read<PetsBloc>().add(AdoptedPetsEvent(widget.adoptme));
                    showdialogue(context);
                    if (widget.isPlaying) {
                      widget.controller.stop();
                    } else {
                      widget.controller.play();
                    }
                  }
                },
                child: Container(
                  width: size.width * .65,
                  height: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: myShadow,
                    color: state.adoptedPets.contains(widget.adoptme)
                        ? Colors.grey
                        : primaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      state.adoptedPets.contains(widget.adoptme)
                          ? 'Adopted'
                          : 'Adopt Me',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
