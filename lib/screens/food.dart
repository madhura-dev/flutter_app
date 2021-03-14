import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
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
        title: Text("Food Explorer"),
      ),
      body: WebView(
        initialUrl: "https://www.instagram.com/aurangabadfoodexplorer/?hl=en",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
