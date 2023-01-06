import 'package:booking_bus_app/components/modules.dart';

class TimerVerification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return TimerVerificationState();
  }
}

class TimerVerificationState extends State<TimerVerification> {
  int timers = 120;
  Timer timer;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    runTimer();
    super.initState();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    timer?.cancel();
    super.dispose();
  }
  void runTimer() {
    timer = Timer.periodic(Duration(seconds: 1), updateTimer);
  }

  void updateTimer(Timer t) {
  setState(() {
    timers--;
  });
    if (timers < 1) {
      timer.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {

    // ignore: todo
    // TODO: implement build
    return Text("00:${timers < 10 ? '0$timers' : timers}",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          letterSpacing: 1,
          color: timers < 60 ? Colors.red : Colors.black),
    );
  }

}