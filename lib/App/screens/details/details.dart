import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pet_adoption/App/models/pet_model.dart';
import 'package:pet_adoption/App/models/sample_data.dart';
import 'package:pet_adoption/App/screens/details/components/custom_nav_drawer.dart';
import 'package:confetti/confetti.dart';
import 'components/cat_details.dart';
import 'components/details_app_bar.dart';
import 'components/owner_info.dart';
import 'components/page_slider_indicator.dart';

class PetDetailsPage extends StatefulWidget {
  const PetDetailsPage({super.key, required this.pet});

  final Pet pet;

  @override
  State<PetDetailsPage> createState() => _PetDetailsPageState();
}

class _PetDetailsPageState extends State<PetDetailsPage> {
  int _activeIndex = 0;
  final confettiController = ConfettiController();
  bool isPlaying = false;
  final _pageViewController = PageController();
  @override
  Widget build(BuildContext context) {
    _pageViewController.addListener(() {
      setState(() {
        _activeIndex = _pageViewController.page!.round();
      });
    });
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(
        adoptme: widget.pet,
        isPlaying: isPlaying,
        controller: confettiController,
      ),
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: ConfettiWidget(
              confettiController: confettiController,
              blastDirection: -pi / 2,
              gravity: 0.02,
              emissionFrequency: 0.2,
            ),
          ),
          SizedBox(
            height: size.height * .6,
            child: PageView.builder(
              itemCount: widget.pet.images.length,
              controller: _pageViewController,
              itemBuilder: (context, index) {
                return Hero(
             
                  transitionOnUserGestures: true,
                  tag: widget.pet.images,
                  child: Container(
                    padding: const EdgeInsets.all(24.0),
                    decoration: BoxDecoration(color: widget.pet.color),
                    child: InteractiveViewer(
                      child: Image.asset(
                        widget.pet.images[index],
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const DetailsPageAppBar(),
          CustomPageSlider(
            length: widget.pet.images.length,
            activeIndex: _activeIndex,
          ),
          CatDetails(
            pet: widget.pet,
          ),
          const OwnerInfo(),
        ],
      ),
    );
  }
}
