import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:projects/Increase_event.dart';
import 'package:projects/home_bloc.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  Widget buildWidget(BuildContext context, MyHomePageState state){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: StreamBuilder<int>(
            stream:  state.bloc.counterOutStream,
            builder: (_, snapShot){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    snapShot.data == null ? "0": snapShot.data.toString() ,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              );
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: state.incrementCounter,
        tooltip: 'Increment',
        key: Key('increment_counter_btn'),
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  MyHomePageState createState() => MyHomePageState();
}

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