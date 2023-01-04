part of 'pets_bloc.dart';

class PetsState extends Equatable {
  List<Pet> adoptedPets;
  List<Pet> searchedPets;
  PetsState(this.adoptedPets,this.searchedPets);

  @override
  List<Object> get props => [adoptedPets,searchedPets];
}
