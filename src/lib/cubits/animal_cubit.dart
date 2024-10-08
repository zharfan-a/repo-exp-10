
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:com.example.simple_animals/models/animal.dart';

class AnimalCubit extends Cubit<Animal> {
	AnimalCubit() : super(Animal(name: 'Cat', icon: Icons.access_time));

	void toggleAnimal() {
		if (state.name == 'Cat') {
			emit(Animal(name: 'Dog', icon: Icons.person));
		} else {
			emit(Animal(name: 'Cat', icon: Icons.access_time));
		}
	}
}
