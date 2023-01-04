// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_adoption/App/blocs/pets_bloc/pets_bloc.dart';
import 'package:pet_adoption/App/models/pet_model.dart';
import 'package:pet_adoption/App/models/sample_data.dart';
import 'package:pet_adoption/App/utils/constants.dart';
import 'package:pet_adoption/App/utils/widgets/spacing_widgets.dart';

import 'category_options.dart';
import 'pets_available.dart';

class SearchBar extends StatefulWidget {
  SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          width: double.infinity,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: const Color.fromRGBO(224, 224, 224, 1),
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.search_rounded,
                size: 30.0,
                color: primaryColor,
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: TextField(
                  onChanged: (value) {
                    context.read<PetsBloc>().add(SearchedPetsEvent(value));

                  },
                  controller: searchController,
                  style: GoogleFonts.montserrat(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for pets to adopt',
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: BlocBuilder<PetsBloc, PetsState>(
            builder: (context, state) {
              return PetsAvailable(
                  searchController: searchController,
                  searchedList: state.searchedPets);
            },
          ),
        ),
      ],
    );
  }
}
