import 'package:flutter_test/flutter_test.dart';
import 'package:projects/Increase_event.dart';
import 'package:projects/home_bloc.dart';

void main() {
  test("should return incremented counter when counterSink executed", () {
    // Arrange.
    var bloc = HomeBloc();

    // Act.
    bloc.counterInSink.add(IncreaseEvent());

    // Assert.
    bloc.counterOutStream.listen((int event) {
      expect(event, 1);
    });
  });

  test("should increase counter when counterSink executed", (){
    // Arrange.
    var bloc = HomeBloc();

    // Act.
    bloc.counterInSink.add(IncreaseEvent());

    // Assert.
    bloc.counterOutStream.listen((int event) {
      expect(bloc.counter, 1);
    });
  });
}
