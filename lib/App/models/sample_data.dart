import 'package:flutter/material.dart';
import 'package:pet_adoption/App/models/pet_model.dart';

List<Map<String, dynamic>> categories = [
  {
    'name': 'Cats',
    'icon': 'assets/images/cat.png',
    'active': true,
  },
  {
    'name': 'Dogs',
    'icon': 'assets/images/dog.png',
    'active': false,
  },
  {
    'name': 'Bunnies',
    'icon': 'assets/images/rabbit.png',
    'active': false,
  },
  {
    'name': 'Parrots',
    'icon': 'assets/images/parrot.png',
    'active': false,
  },
  {
    'name': 'Horses',
    'icon': 'assets/images/horse.png',
    'active': false,
  },
];

List<Pet> pets = [
  const Pet(
    name: 'Sola',
    species: 'British Shorthair',
    age: 3,
    images: [
      'assets/images/cat-8.png',
      'assets/images/cat-7.png',
      'assets/images/cat-9.png',
    ],
    color: Color.fromARGB(255, 209, 217, 221),
    gender: IconData(0xe261, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Orion',
    species: 'American Bobtail',
    age: 2,
    images: [
      'assets/images/cat-4.png',
      'assets/images/cat-5.png',
      'assets/images/cat-6.png',
    ],
    color: Color.fromARGB(255, 224, 214, 204),
    gender: IconData(0xe3c5, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Puff',
    species: 'Abyssinian Cat',
    age: 2,
    images: [
      'assets/images/cat-1.png',
      'assets/images/cat-2.png',
      'assets/images/cat-3.png',
    ],
    color: Color.fromARGB(255, 196, 186, 179),
    gender: IconData(0xe261, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Beagale',
    species: 'Beagale Dog',
    age: 2,
    images: [
      'assets/images/Beagle-Dog.png',
      'assets/images/b1.png',
      'assets/images/b2.png',
    ],
    color: Color.fromARGB(255, 196, 186, 179),
    gender: IconData(0xe261, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Lab',
    species: 'Labrador',
    age: 1,
    images: [
      'assets/images/l3.png',
      'assets/images/l1.png',
      'assets/images/l3.png',
    ],
    color: Color.fromARGB(255, 196, 186, 179),
    gender: IconData(0xe3c5, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Rotty',
    species: 'Rottweiler Dog',
    age: 2,
    images: [
      'assets/images/r1.png',
      'assets/images/r2.png',
      'assets/images/r3.png',
    ],
    color: Color.fromARGB(255, 224, 214, 204),
    gender: IconData(0xe261, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Goldy',
    species: 'Golden Retriever',
    age: 3,
    images: [
      'assets/images/go5.png',
      'assets/images/go3.png',
      'assets/images/go1.png',
    ],
    color: Color.fromARGB(255, 209, 217, 221),
    gender: IconData(0xe261, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Husky',
    species: 'Siberean Husky',
    age: 3,
    images: [
      'assets/images/h5.png',
      'assets/images/sm2.png',
      'assets/images/h1.png',
    ],
    color: Color.fromARGB(255, 209, 217, 221),
    gender: IconData(0xe3c5, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Germy',
    species: 'German Sheppard',
    age: 3,
    images: [
      'assets/images/g2.png',
      'assets/images/g1.png',
    ],
    color: Color.fromARGB(255, 209, 217, 221),
    gender: IconData(0xe261, fontFamily: 'MaterialIcons'),
  ),
  const Pet(
    name: 'Dalmition',
    species: 'Dalmition',
    age: 3,
    images: [
      'assets/images/dal1.png',
    ],
    color: Color.fromARGB(255, 209, 217, 221),
    gender: IconData(0xe3c5, fontFamily: 'MaterialIcons'),
  ),
];
