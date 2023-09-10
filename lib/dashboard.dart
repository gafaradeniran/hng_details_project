import 'package:flutter/material.dart';
import 'package:hng_details_project/widgets/button.dart';
import 'package:hng_details_project/widgets/github_webview.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Slack Details'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Adeniran Gafar Olakunle',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(
                'assets/images/dp.jpg',
              ),
            ),
            SizedBox(height: height * 0.15),
            myButton('Open GitHub', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const GithubWeb()));
            }, width * 0.75),
          ],
        ),
      ),
    );
  }
}
