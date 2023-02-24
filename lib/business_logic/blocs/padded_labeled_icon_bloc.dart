import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'padded_labeled_icon_event.dart';
part 'padded_labeled_icon_state.dart';

class PaddedLabeledIconBloc extends Bloc<PaddedLabeledIconEvent, PaddedLabeledIconState> {
  PaddedLabeledIconBloc() : super(PaddedLabeledIconInitial()) {
    on<PaddedLabeledIconEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
