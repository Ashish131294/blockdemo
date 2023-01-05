import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'demo_bloc.dart';
import 'demo_event.dart';
import 'demo_state.dart';

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DemoBloc()..add(InitEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<DemoBloc>(context);

    return Scaffold(appBar: AppBar(title: Text("Bloc"),),
    body: Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(controller: t1, keyboardType: TextInputType.number),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(controller: t2,keyboardType: TextInputType.number),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {

          bloc.add(Sum(t1.text,t2.text));

        }, child: Text("Sum")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {

          bloc.add(Mul(t1.text,t2.text));
        }, child: Text("Mul")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {

          bloc.add(Sub(t1.text,t2.text));
        }, child: Text("Sub")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {

          bloc.add(increment());
        }, child: Text("Increment")),
      ),
      BlocBuilder<DemoBloc,int>(builder: (context, state) {
        return Text("Sum=$state");
      },)
    ],),
    );
  }
}

