import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/loggers/logger.dart';
import '../context/context_activity_bloc.dart';

abstract class BaseBloc<E, S> extends Bloc<E, S> {
  BaseBloc(S initialState) : super(initialState) {
    on<E>(onEventHandler);
  }
  ContextActivityBloc? contextActivity;

  void onEventHandler(E event, Emitter emit);

  void withContextHandler(ContextActivityBloc contextActivityBloc) {
    contextActivity = contextActivityBloc;
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    CustomPrinter('BlocError: ${error.toString()}');
    super.onError(error, stackTrace);
  }
}
