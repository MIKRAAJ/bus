import 'package:booking_bus_app/components/modules.dart';
// ignore: unused_import
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  File _images;
  var defaultImage = "assets/images/imageprofile.jpg";
  var imagesources;
  TextEditingController username = new TextEditingController();
  TextEditingController emails = new TextEditingController();
  TextEditingController phonenumber = new TextEditingController();
  TextEditingController password = new TextEditingController();

  void getAccount() async {

  }

  void getImages() async {
    var image = await ImagePicker.pickImage(source: imagesources);

    setState(() {
      _images = image;
    });

  }
//https://stackoverflow.com/questions/51328368/how-to-upload-image-to-firebase-using-flutter
  void notifImage() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Choose your image", style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black), ),
          actions: <Widget>[
            FlatButton(onPressed: (){
              imagesources = ImageSource.gallery;
            }, child: Text("Gallery")),
            FlatButton(onPressed: (){
              imagesources = ImageSource.camera;
            }, child: Text("Camera")),
          ],
        );
    });
  }
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            InkWell(
              child: _images == null ?
              Image.asset(defaultImage, width: 100.0, height: 100.0,) :
              Image.file(_images, width: 100.0, height: 100.0,),
              onTap: (){
                notifImage();
              },
            ),
            Material(
              elevation: 2.5,
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              child: WidgetComponent.formField(
                hints: "Username",
                controllers: username,
              ),
            ),
            Material(
              elevation: 2.5,
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              child: WidgetComponent.formField(
                hints: "Email",
                inputType: TextInputType.emailAddress,
                controllers: emails,
              ),
            ),
            Material(
              child: WidgetComponent.formField(
                enables: false,
                controllers: phonenumber,
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: WidgetComponent.buttons("Register",
                      textColor : Colors.white,
                      bolds: FontWeight.bold,
                      elevas: 2.0,
                      radius: 20.0,
                      padding: EdgeInsets.only(top: 8.0),
                      coloring: Colours.magenta,
                      onPressed: (){
                        getAccount();
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  // ignore: non_constant_identifier_names
  FlatButton({Null Function() onPressed, Text child}) {}

}