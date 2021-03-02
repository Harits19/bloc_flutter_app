import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum CounterEvent { increment } // bisa tambah 'CounterEvent' lainnya

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0); //nilai inisiasi

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    if (event == CounterEvent.increment) {
      yield state + 1;
    } else {
      addError(Exception('Event not found'));
    }
  }
}
