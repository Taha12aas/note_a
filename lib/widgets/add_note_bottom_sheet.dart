import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note/cubits/add%20note%20cubit/add_note_cubit_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/widgets/custom_button.dart';
import 'package:note/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  String title = '';
  String supTitle = '';
  GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubitCubit(),
      child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNoteFaliure) {
            print('object');
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: Form(
              key: globalKey,
              autovalidateMode: autovalidateMode,
              child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 30,
                    left: 15,
                    right: 15,
                  ),
                  child: CustomTextField(
                    hintText: 'Title',
                    onsaved: (p0) {
                      title = p0!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                    left: 15,
                    right: 15,
                  ),
                  child: CustomTextField(
                    onsaved: (p0) {
                      supTitle = p0!;
                    },
                    hintText: 'Content',
                    maxLine: 5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 75, right: 14, left: 14, bottom: 5),
                  child: CustomButton(
                    onPres: () {
                      if (globalKey.currentState!.validate()) {
                        globalKey.currentState!.save();
                        BlocProvider.of<AddNoteCubitCubit>(context).addNote(
                            NoteModel(
                                title: title,
                                content: supTitle,
                                date: DateTime.now().toString(),
                                color: Colors.white.value));
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
