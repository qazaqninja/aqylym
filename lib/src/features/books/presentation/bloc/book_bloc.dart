import 'dart:async';

import 'package:aqylym/src/features/books/domain/entities/get_text_entity.dart';
import 'package:aqylym/src/features/books/domain/requests/get_text_request.dart';
import 'package:aqylym/src/features/books/domain/usecases/get_text_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';

part 'book_bloc.freezed.dart';
part 'book_event.dart';
part 'book_state.dart';

// book_bloc.dart
class BookBloc extends BaseBloc<BookEvent, BookState> {
  BookBloc(
    this.getTextUseCase,
  ) : super(const BookState.initial());

  final GetTextUseCase getTextUseCase;
  BookViewModel _viewModel = const BookViewModel();
  int _currentPage = 0;
  List<String> _pages = [];

  @override
  Future<void> onEventHandler(BookEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(event as _Started),
      getText: (request) => _getText(
        event as _GetText,
        emit as Emitter<BookState>,
      ),
      nextPage: () => _nextPage(emit),
      previousPage: () => _previousPage(emit),
    );
  }

  Future<void> _started(_Started event) async {}

  Future<void> _getText(_GetText event, Emitter emit) async {
    if (_viewModel.text != null) {
      emit(_Loaded(
        viewModel: _viewModel,
        currentPage: _currentPage,
        currentText: _pages[_currentPage],
        totalPages: _pages.length,
      ));
      return;
    }

    emit(const _Loading());
    final result = await getTextUseCase.call(event.request);

    final data = result.data;
    if (data != null) {
      // Split text into pages (e.g., 500 characters per page)
      final content = data.choices.first.message.content;
      _pages = _splitIntoPages(content);

      _viewModel = _viewModel.copyWith(text: data);
      emit(_Loaded(
        viewModel: _viewModel,
        currentPage: _currentPage,
        currentText: _pages[_currentPage],
        totalPages: _pages.length,
      ));
    } else {
      emit(_Error(result.failure!.message));
    }
  }

  Future<void> _nextPage(Emitter emit) async {
    if (_currentPage < _pages.length - 1) {
      _currentPage++;
      emit(_Loaded(
        viewModel: _viewModel,
        currentPage: _currentPage,
        currentText: _pages[_currentPage],
        totalPages: _pages.length,
      ));
    }
  }

  Future<void> _previousPage(Emitter emit) async {
    if (_currentPage > 0) {
      _currentPage--;
      emit(_Loaded(
        viewModel: _viewModel,
        currentPage: _currentPage,
        currentText: _pages[_currentPage],
        totalPages: _pages.length,
      ));
    }
  }

  List<String> _splitIntoPages(String text, {int charsPerPage = 350}) {
    List<String> pages = [];
    for (var i = 0; i < text.length; i += charsPerPage) {
      var end = (i + charsPerPage < text.length) ? i + charsPerPage : text.length;
      pages.add(text.substring(i, end));
    }
    return pages;
  }
}
