import 'package:booking_bus_app/components/modules.dart';

// ignore: must_be_immutable
class LoadingScreen extends StatefulWidget {
  bool loading;

  LoadingScreen({
    @required this.loading
  });

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return LoadingScreenState();
  }

}

class LoadingScreenState extends State<LoadingScreen> {

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Positioned(
      child: widget.loading ? Container(
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.grey.withOpacity(0.5),),
          ),
        ),
        color: Color(0XFFDCDCDC).withOpacity(0.8),
      ) : Container(),
    );
  }
}