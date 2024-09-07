part of 'add_note_cubit_cubit.dart';

abstract class AddNoteCubitState {}

class AddNoteCubitInitial extends AddNoteCubitState {}

class AddNoteLoading extends AddNoteCubitState {}

class AddNoteSuccess extends AddNoteCubitState {}

class AddNoteFaliure extends AddNoteCubitState {
  final String errorMessage;

  AddNoteFaliure({required this.errorMessage});
}
