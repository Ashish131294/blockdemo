import 'package:bloc/bloc.dart';

import 'demo_event.dart';
import 'demo_state.dart';

class DemoBloc extends Bloc<DemoEvent, int> {
  int i=0;

  DemoBloc() : super(0) {
    on<InitEvent>((event, emit) {
      emit(i);
    },);

    on<Sum>((s, emit) {
      int ans=int.parse(s.a)+int.parse(s.b);
      emit(ans);
    },);
    on<Mul>((m, emit) {
      int ans=int.parse(m.a)*int.parse(m.b);
      emit(ans);
    },);
    on<Sub>((p, emit) {
      int ans=int.parse(p.a)-int.parse(p.b);
      emit(ans);
    },);
    on<increment>((event, emit) {
      i++;
      emit(i);
    },);


  }


}
