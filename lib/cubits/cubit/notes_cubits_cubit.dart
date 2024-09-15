import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note/constants.dart';
import 'package:note/cubits/cubit/notes_cubits_state.dart';
import 'package:note/models/note_model.dart';

class NotesCubitsCubit extends Cubit<NotesCubitsState> {
  NotesCubitsCubit() : super(NotesCubitsInitial());
  List<NoteModel>? notes;
  List<NoteModel> showNotes() {
    var noteBOx = Hive.box<NoteModel>(kPrimaryBox);
    notes = noteBOx.values.toList();
    return notes!;
  }
}
