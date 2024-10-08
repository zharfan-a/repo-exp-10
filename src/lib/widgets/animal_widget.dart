
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_animals/cubits/animal_cubit.dart';
import 'package:simple_animals/models/animal.dart';

class AnimalWidget extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return BlocBuilder<AnimalCubit, Animal>(
			builder: (context, animal) {
				return GestureDetector(
					onTap: () {
						context.read<AnimalCubit>().toggleAnimal();
					},
					child: Row(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							Text(animal.name),
							SizedBox(width: 8),
							Icon(animal.icon),
						],
					),
				);
			},
		);
	}
}
