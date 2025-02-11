// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetTextRequest request) getText,
    required TResult Function() nextPage,
    required TResult Function() previousPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetTextRequest request)? getText,
    TResult? Function()? nextPage,
    TResult? Function()? previousPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetTextRequest request)? getText,
    TResult Function()? nextPage,
    TResult Function()? previousPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetText value) getText,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PreviousPage value) previousPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetText value)? getText,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PreviousPage value)? previousPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetText value)? getText,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PreviousPage value)? previousPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookEventCopyWith<$Res> {
  factory $BookEventCopyWith(BookEvent value, $Res Function(BookEvent) then) =
      _$BookEventCopyWithImpl<$Res, BookEvent>;
}

/// @nodoc
class _$BookEventCopyWithImpl<$Res, $Val extends BookEvent>
    implements $BookEventCopyWith<$Res> {
  _$BookEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$BookEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'BookEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetTextRequest request) getText,
    required TResult Function() nextPage,
    required TResult Function() previousPage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetTextRequest request)? getText,
    TResult? Function()? nextPage,
    TResult? Function()? previousPage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetTextRequest request)? getText,
    TResult Function()? nextPage,
    TResult Function()? previousPage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetText value) getText,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PreviousPage value) previousPage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetText value)? getText,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PreviousPage value)? previousPage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetText value)? getText,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PreviousPage value)? previousPage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BookEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetTextImplCopyWith<$Res> {
  factory _$$GetTextImplCopyWith(
          _$GetTextImpl value, $Res Function(_$GetTextImpl) then) =
      __$$GetTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetTextRequest request});

  $GetTextRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$GetTextImplCopyWithImpl<$Res>
    extends _$BookEventCopyWithImpl<$Res, _$GetTextImpl>
    implements _$$GetTextImplCopyWith<$Res> {
  __$$GetTextImplCopyWithImpl(
      _$GetTextImpl _value, $Res Function(_$GetTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetTextImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetTextRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GetTextRequestCopyWith<$Res> get request {
    return $GetTextRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$GetTextImpl implements _GetText {
  const _$GetTextImpl(this.request);

  @override
  final GetTextRequest request;

  @override
  String toString() {
    return 'BookEvent.getText(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTextImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTextImplCopyWith<_$GetTextImpl> get copyWith =>
      __$$GetTextImplCopyWithImpl<_$GetTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetTextRequest request) getText,
    required TResult Function() nextPage,
    required TResult Function() previousPage,
  }) {
    return getText(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetTextRequest request)? getText,
    TResult? Function()? nextPage,
    TResult? Function()? previousPage,
  }) {
    return getText?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetTextRequest request)? getText,
    TResult Function()? nextPage,
    TResult Function()? previousPage,
    required TResult orElse(),
  }) {
    if (getText != null) {
      return getText(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetText value) getText,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PreviousPage value) previousPage,
  }) {
    return getText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetText value)? getText,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PreviousPage value)? previousPage,
  }) {
    return getText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetText value)? getText,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PreviousPage value)? previousPage,
    required TResult orElse(),
  }) {
    if (getText != null) {
      return getText(this);
    }
    return orElse();
  }
}

abstract class _GetText implements BookEvent {
  const factory _GetText(final GetTextRequest request) = _$GetTextImpl;

  GetTextRequest get request;
  @JsonKey(ignore: true)
  _$$GetTextImplCopyWith<_$GetTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextPageImplCopyWith<$Res> {
  factory _$$NextPageImplCopyWith(
          _$NextPageImpl value, $Res Function(_$NextPageImpl) then) =
      __$$NextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageImplCopyWithImpl<$Res>
    extends _$BookEventCopyWithImpl<$Res, _$NextPageImpl>
    implements _$$NextPageImplCopyWith<$Res> {
  __$$NextPageImplCopyWithImpl(
      _$NextPageImpl _value, $Res Function(_$NextPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageImpl implements _NextPage {
  const _$NextPageImpl();

  @override
  String toString() {
    return 'BookEvent.nextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetTextRequest request) getText,
    required TResult Function() nextPage,
    required TResult Function() previousPage,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetTextRequest request)? getText,
    TResult? Function()? nextPage,
    TResult? Function()? previousPage,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetTextRequest request)? getText,
    TResult Function()? nextPage,
    TResult Function()? previousPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetText value) getText,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PreviousPage value) previousPage,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetText value)? getText,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PreviousPage value)? previousPage,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetText value)? getText,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PreviousPage value)? previousPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _NextPage implements BookEvent {
  const factory _NextPage() = _$NextPageImpl;
}

/// @nodoc
abstract class _$$PreviousPageImplCopyWith<$Res> {
  factory _$$PreviousPageImplCopyWith(
          _$PreviousPageImpl value, $Res Function(_$PreviousPageImpl) then) =
      __$$PreviousPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviousPageImplCopyWithImpl<$Res>
    extends _$BookEventCopyWithImpl<$Res, _$PreviousPageImpl>
    implements _$$PreviousPageImplCopyWith<$Res> {
  __$$PreviousPageImplCopyWithImpl(
      _$PreviousPageImpl _value, $Res Function(_$PreviousPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreviousPageImpl implements _PreviousPage {
  const _$PreviousPageImpl();

  @override
  String toString() {
    return 'BookEvent.previousPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreviousPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetTextRequest request) getText,
    required TResult Function() nextPage,
    required TResult Function() previousPage,
  }) {
    return previousPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetTextRequest request)? getText,
    TResult? Function()? nextPage,
    TResult? Function()? previousPage,
  }) {
    return previousPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetTextRequest request)? getText,
    TResult Function()? nextPage,
    TResult Function()? previousPage,
    required TResult orElse(),
  }) {
    if (previousPage != null) {
      return previousPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetText value) getText,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PreviousPage value) previousPage,
  }) {
    return previousPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetText value)? getText,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PreviousPage value)? previousPage,
  }) {
    return previousPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetText value)? getText,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PreviousPage value)? previousPage,
    required TResult orElse(),
  }) {
    if (previousPage != null) {
      return previousPage(this);
    }
    return orElse();
  }
}

abstract class _PreviousPage implements BookEvent {
  const factory _PreviousPage() = _$PreviousPageImpl;
}

/// @nodoc
mixin _$BookState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res, BookState>;
}

/// @nodoc
class _$BookStateCopyWithImpl<$Res, $Val extends BookState>
    implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BookState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BookState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BookState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BookViewModel viewModel,
      int currentPage,
      String? currentText,
      int totalPages});

  $BookViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
    Object? currentPage = null,
    Object? currentText = freezed,
    Object? totalPages = null,
  }) {
    return _then(_$LoadedImpl(
      viewModel: null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as BookViewModel,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentText: freezed == currentText
          ? _value.currentText
          : currentText // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookViewModelCopyWith<$Res> get viewModel {
    return $BookViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.viewModel,
      this.currentPage = 0,
      this.currentText,
      this.totalPages = 1});

  @override
  final BookViewModel viewModel;
  @override
  @JsonKey()
  final int currentPage;
  @override
  final String? currentText;
  @override
  @JsonKey()
  final int totalPages;

  @override
  String toString() {
    return 'BookState.loaded(viewModel: $viewModel, currentPage: $currentPage, currentText: $currentText, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.currentText, currentText) ||
                other.currentText == currentText) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, viewModel, currentPage, currentText, totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(viewModel, currentPage, currentText, totalPages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(viewModel, currentPage, currentText, totalPages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(viewModel, currentPage, currentText, totalPages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements BookState {
  const factory _Loaded(
      {required final BookViewModel viewModel,
      final int currentPage,
      final String? currentText,
      final int totalPages}) = _$LoadedImpl;

  BookViewModel get viewModel;
  int get currentPage;
  String? get currentText;
  int get totalPages;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BookState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookViewModel viewModel, int currentPage,
            String? currentText, int totalPages)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BookState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookViewModel {
  GetTextEntity? get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookViewModelCopyWith<BookViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookViewModelCopyWith<$Res> {
  factory $BookViewModelCopyWith(
          BookViewModel value, $Res Function(BookViewModel) then) =
      _$BookViewModelCopyWithImpl<$Res, BookViewModel>;
  @useResult
  $Res call({GetTextEntity? text});

  $GetTextEntityCopyWith<$Res>? get text;
}

/// @nodoc
class _$BookViewModelCopyWithImpl<$Res, $Val extends BookViewModel>
    implements $BookViewModelCopyWith<$Res> {
  _$BookViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as GetTextEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetTextEntityCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $GetTextEntityCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookViewModelImplCopyWith<$Res>
    implements $BookViewModelCopyWith<$Res> {
  factory _$$BookViewModelImplCopyWith(
          _$BookViewModelImpl value, $Res Function(_$BookViewModelImpl) then) =
      __$$BookViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetTextEntity? text});

  @override
  $GetTextEntityCopyWith<$Res>? get text;
}

/// @nodoc
class __$$BookViewModelImplCopyWithImpl<$Res>
    extends _$BookViewModelCopyWithImpl<$Res, _$BookViewModelImpl>
    implements _$$BookViewModelImplCopyWith<$Res> {
  __$$BookViewModelImplCopyWithImpl(
      _$BookViewModelImpl _value, $Res Function(_$BookViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$BookViewModelImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as GetTextEntity?,
    ));
  }
}

/// @nodoc

class _$BookViewModelImpl implements _BookViewModel {
  const _$BookViewModelImpl({this.text});

  @override
  final GetTextEntity? text;

  @override
  String toString() {
    return 'BookViewModel(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookViewModelImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookViewModelImplCopyWith<_$BookViewModelImpl> get copyWith =>
      __$$BookViewModelImplCopyWithImpl<_$BookViewModelImpl>(this, _$identity);
}

abstract class _BookViewModel implements BookViewModel {
  const factory _BookViewModel({final GetTextEntity? text}) =
      _$BookViewModelImpl;

  @override
  GetTextEntity? get text;
  @override
  @JsonKey(ignore: true)
  _$$BookViewModelImplCopyWith<_$BookViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
