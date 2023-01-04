import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
class Pet extends Equatable{
  const Pet(
      {required this.species,
      required this.name,
      required this.age,
      required this.images,
      required this.color,
      required this.gender});
  final String species, name;
  final List images;
  final int age;
  final IconData gender;
  final Color color;
  
  @override
  
  List<Object?> get props => [species,name,age,images,color,gender];
}
