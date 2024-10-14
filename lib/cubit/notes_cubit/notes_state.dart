part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesLoading extends NotesState {}
class NotesSuccess extends NotesState {
  List <NoteModel> notes;
  NotesSuccess(this.notes);
}
class NotesFailure extends NotesState {
  final String errorMessage;
  NotesFailure(this.errorMessage);
}

