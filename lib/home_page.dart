import 'package:flutter/material.dart';

import 'home_page_state.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  Widget buildWidget(BuildContext context, MyHomePageState state) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          StreamBuilder(
              stream: state.bloc.counterOutStream,
              builder: (_, snapShot) {
                return Text(
                  snapShot.data == null ? "0" : snapShot.data.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              })
        ],
      )),
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