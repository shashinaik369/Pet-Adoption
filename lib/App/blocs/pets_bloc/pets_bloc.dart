import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pet_adoption/App/models/pet_model.dart';
import 'package:pet_adoption/App/models/sample_data.dart';

part 'pets_event.dart';
part 'pets_state.dart';

class PetsBloc extends Bloc<PetsEvent, PetsState> {
  PetsBloc() : super(PetsState([], [])) {
    on<AdoptedPetsEvent>((event, emit) {
      emit(PetsState(List.from(state.adoptedPets)..add(event.adoptedEvent),
          List.from(state.searchedPets)));
    });
    on<SearchedPetsEvent>((event, emit) {
      
   
          
        List<Pet> tmpSearchList = pets
            .where((element) => element.name
                .toLowerCase()
                .contains(event.searchedPet.toLowerCase()))
            .toList();
        emit(PetsState(List.from(state.adoptedPets), tmpSearchList));
      
      
    });
  }
}
