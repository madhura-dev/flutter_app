import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Private extends StatefulWidget {
  @override
  _PrivateState createState() => _PrivateState();
}

class _PrivateState extends State<Private> {
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
        title: Text("Aurangabd Explorer"),
      ),
      body: WebView(
        initialUrl: "https://en.wikipedia.org/wiki/Aurangabad",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}