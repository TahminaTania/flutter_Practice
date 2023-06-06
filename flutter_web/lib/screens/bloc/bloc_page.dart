import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/screens/bloc/bloc_event_page.dart';
import 'package:flutter_web/screens/bloc/bloc_state_page.dart';

class MypageBloc extends Bloc<mypageEvent, mypageState> {
  Connectivity cont = Connectivity();
  StreamSubscription? contSubscription;
  MypageBloc() : super(pageInitialState()) {
    on<pagelostEvent>((event, emit) {
      emit(pageLostState());
      // TODO: implement event handler
    });
    on<pageGainedEvent>((event, emit) {
      emit(pageGainedState());
      // TODO: implement event handler
    });

    contSubscription = cont.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        add(pageGainedEvent());
      } else {
        add(pagelostEvent());
      }
    });
  }

  @override
  Future<void> close() {
    contSubscription?.cancel();
    // TODO: implement close
    return super.close();
  }
}
