import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Travel extends StatefulWidget {
  @override
  _TravelState createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.grey,
        title: Text("Tourism"),
      ),
      body: WebView(
        initialUrl: "https://www.thrillophilia.com/places-to-visit-in-aurangabad",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}