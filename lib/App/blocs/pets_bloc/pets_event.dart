part of 'pets_bloc.dart';

abstract class PetsEvent extends Equatable {
  const PetsEvent();

  @override
  List<Object> get props => [];
}

class SearchedPetsEvent extends PetsEvent {
   String searchedPet;
  SearchedPetsEvent(this.searchedPet);
  @override
  List<Object> get props => [searchedPet];
}

class AdoptedPetsEvent extends PetsEvent {
   Pet adoptedEvent;
  AdoptedPetsEvent(this.adoptedEvent);
  @override
  List<Object> get props => [adoptedEvent];
}
