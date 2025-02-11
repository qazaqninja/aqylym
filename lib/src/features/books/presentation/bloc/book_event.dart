part of 'book_bloc.dart';

@freezed
class BookEvent with _$BookEvent {
  const factory BookEvent.started() = _Started;
  const factory BookEvent.getText(GetTextRequest request) = _GetText;
  const factory BookEvent.nextPage() = _NextPage;
  const factory BookEvent.previousPage() = _PreviousPage;
}
