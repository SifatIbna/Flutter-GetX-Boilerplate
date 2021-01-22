///
/// Here Get.SnackBar methods all properties are
/// Discussed and Coded
///
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Snackbar",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'SnackBar',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Show Snackbar"),
                onPressed: () {
                  Get.snackbar("Showing Snackbar", "This is Snackbar Message",
                      snackPosition: SnackPosition.BOTTOM,
                      // titleText: Text("Another Text"),
                      // messageText: Text(
                      //   "Another Message Text",
                      //   style: TextStyle(color: Colors.black),
                      // ),
                      /**
                       * This titleText will override
                       * the above titleText and messageText
                       */
                      colorText: Colors.red,
                      backgroundColor: Colors.black,
                      borderRadius: 30,
                      margin: EdgeInsets.all(10),
                      // maxWidth: 100,
                      // animationDuration: Duration(microseconds: 3000),
                      backgroundGradient: LinearGradient(
                        colors: [Colors.red, Colors.green],
                      ),
                      borderColor: Colors.purple,
                      borderWidth: 4,
                      boxShadows: [
                        BoxShadow(
                          color: Colors.yellow,
                          offset: Offset(30, 50),
                          spreadRadius: 20,
                          blurRadius: 8,
                        ),
                      ],
                      isDismissible: true,
                      // swipe right or left
                      dismissDirection: SnackDismissDirection.HORIZONTAL,
                      // Swiping Horizontally
                      forwardAnimationCurve: Curves.bounceInOut,
                      duration: Duration(milliseconds: 8000),
                      icon: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                      shouldIconPulse: false,
                      // Icons will not Pulse
                      leftBarIndicatorColor: Colors.white,
                      mainButton: FlatButton(
                        child: Text("Retry"),
                        color: Colors.green,
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                      onTap: (val) {
                        print("SnackBar Pressed");
                      },
                      overlayBlur: 5,
                      overlayColor: Colors.grey,
                      padding: EdgeInsets.all(10),
                      showProgressIndicator: true,
                      progressIndicatorBackgroundColor: Colors.deepOrange,
                      progressIndicatorValueColor:
                          AlwaysStoppedAnimation<Color>(Colors.white),
                      reverseAnimationCurve: Curves.bounceInOut,
                      snackbarStatus: (val) {
                        print(val);
                      },
                      userInputForm: Form(
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(),
                            )
                          ],
                        ),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
