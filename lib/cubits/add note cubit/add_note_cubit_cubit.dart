import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/constants.dart';
import 'package:note/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBOx = Hive.box<NoteModel>(kPrimaryBox);
      await noteBOx.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFaliure(errorMessage: e.toString()));
    }
  }
}
