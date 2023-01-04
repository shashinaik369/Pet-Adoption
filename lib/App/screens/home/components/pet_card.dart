import 'package:flutter/material.dart';
import 'package:pet_adoption/App/models/pet_model.dart';

import 'pet_card_details.dart';
import 'pet_card_image.dart';


class PetCard extends StatelessWidget {
  const PetCard({super.key, required this.pet});

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: PetcardDetails(size: size, pet: pet),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: PetCardImage(size: size, pet: pet),
          ),
        ],
      ),
    );
  }
}
