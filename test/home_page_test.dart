import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  testWidgets('Should display current speaker when session list appears', (
      WidgetTester tester) async {
    // Arrange.
    // var sessionService = MockSessionService();
    // var sessionId = "1";
    // var speakers = ["Test speaker 1"];
    // var session = Session(
    //     additionalTime: 3,
    //     presentationTime: 5,
    //     sessionName: "Test session",
    //     participants: speakers,
    //     sessionId: sessionId);
    // when(sessionService.getSessionAsync(sessionId))
    //     .thenAnswer((answering) => Future.value(session));
    // var bloc = SessionBloc(sessionService);
    // ServiceContainer.register(() => bloc, RegistrationType.Factory);
    // var app = MaterialApp(
    //   home: SessionWidget(sessionId),
    // );
    //
    // // Act.
    // await tester.pumpWidget(app);
    // await tester.pump();
    // var widget = (find.byKey(Key("session_widget_current_presenter_text"))).evaluate().single.widget as Text;
    //
    // // Assert.
    // expect(widget.data, 'Current presenter : ${speakers[0]}');
  });
}
