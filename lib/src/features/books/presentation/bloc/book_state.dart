part of 'book_bloc.dart';

@freezed
class BookState with _$BookState {
  const factory BookState.initial() = _Initial;
  const factory BookState.loading() = _Loading;
  const factory BookState.loaded({
    required BookViewModel viewModel,
    @Default(0) int currentPage,
    String? currentText,
    @Default(1) int totalPages,
  }) = _Loaded;
  const factory BookState.error(String message) = _Error;
}

@freezed
class BookViewModel with _$BookViewModel {
  const factory BookViewModel({
    GetTextEntity? text,
  }) = _BookViewModel;
}
