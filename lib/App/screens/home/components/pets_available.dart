import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_adoption/App/models/pet_model.dart';
import 'package:pet_adoption/App/models/sample_data.dart';
import 'package:pet_adoption/App/screens/details/details.dart';
import 'package:pet_adoption/App/utils/constants.dart';

import 'pet_card.dart';

class PetsAvailable extends StatefulWidget {
  TextEditingController searchController;
  List<Pet> searchedList;
  PetsAvailable(
      {super.key, required this.searchController, required this.searchedList});

  @override
  State<PetsAvailable> createState() => _PetsAvailableState();
}

class _PetsAvailableState extends State<PetsAvailable> {
  @override
  Widget build(BuildContext context) {
    return widget.searchController.text.isNotEmpty &&
            widget.searchedList.isEmpty
        ? Center(
            child: Text(
              'No Pets Found',
              style: GoogleFonts.montserrat(
                color: primaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          )
        : ListView.builder(
            itemCount: widget.searchController.text.isNotEmpty
                ? widget.searchedList.length
                : pets.length,
            // pets.length,
            itemBuilder: (context, index) {
              final tag = pets[index].images;
              return GestureDetector(
                onTap: () {
                  WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PetDetailsPage(
                        pet: widget.searchedList.isNotEmpty
                            ? widget.searchedList[index]
                            : pets[index],
                        //pets[index],
                      ),
                    ),
                  );
                },
                child: PetCard(
                  pet: widget.searchController.text.isNotEmpty
                      ? widget.searchedList[index]
                      : pets[index],
                  // pets[index],
                ),
              );
            },
          );
  }
}
