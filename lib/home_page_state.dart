import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import 'Increase_event.dart';
import 'home_bloc.dart';
import 'home_page.dart';

class MyHomePageState extends State<MyHomePage> {
  HomeBloc bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc = GetIt.instance.get<HomeBloc>();
  }

  void incrementCounter() {
    bloc.counterInSink.add(IncreaseEvent());
  }

  @override
  Widget build(BuildContext context) {
    return widget.buildWidget(context, this);
  }

  @override
  void dispose() {
    bloc.cleanup();
    super.dispose();
  }
}
