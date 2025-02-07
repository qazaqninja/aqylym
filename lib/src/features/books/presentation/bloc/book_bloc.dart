import 'dart:async';

import 'package:aqylym/src/features/books/domain/entities/get_text_entity.dart';
import 'package:aqylym/src/features/books/domain/requests/get_text_request.dart';
import 'package:aqylym/src/features/books/domain/usecases/get_text_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';
import '../../../../core/base/base_usecase/result.dart';
import '../../../../core/exceptions/domain_exception.dart';

part 'book_bloc.freezed.dart';
part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends BaseBloc<BookEvent, BookState> {
  BookBloc(
    this.getTextUseCase,
  ) : super(const BookState.loading());

  final GetTextUseCase getTextUseCase;

  BookViewModel _viewModel = const BookViewModel();

  @override
  Future<void> onEventHandler(BookEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(event as _Started),
      getText: (request) => _getText(
        event as _GetText,
        emit as Emitter<BookState>,
      ),
    );
  }

  Future<void> _started(_Started event) async {}

  Future<void> _getText(_GetText event, Emitter emit) async {
    emit(const _Loading());
    final Result<GetTextEntity, DomainException> result = await getTextUseCase.call(event.request);

    final data = result.data;

    if (data != null) {
      _viewModel = _viewModel.copyWith(text: data);
      return emit(
        _Loaded(
          viewModel: _viewModel.copyWith(
            text: data,
          ),
        ),
      );
    }
    return emit(_Error(result.failure!.message));
  }
}
