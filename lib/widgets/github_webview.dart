import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GithubWeb extends StatefulWidget {
  const GithubWeb({super.key});

  @override
  State<GithubWeb> createState() => _GithubWebState();
}

class _GithubWebState extends State<GithubWeb> {
  final _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://www.github.com/gafaradeniran"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GitHub Profile Page'),
        ),
        body: SizedBox(
            width: double.infinity,
            child: WebViewWidget(
              controller: _controller,
            )));
  }
}
