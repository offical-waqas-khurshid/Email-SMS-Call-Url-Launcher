import 'package:email_call_sms_for_url_luncher/utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({super.key});


  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("URL Launcher"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButton(
            text: 'Open Link',
            onClicked: () => Utils.openLink(url: 'http://flutter.dev'),
          ),
          buildButton(
            text: 'Open Email',
            onClicked: () => Utils.openEmail(
              toEmail: 'example@gmail.com',
              subject: 'Hello World',
              body: 'This works great!',
            ),
          ),
          buildButton(
            text: 'Open Call',
            onClicked: () =>
                Utils.openPhoneCall(phoneNumber: '+4912388128311'),
          ),
          buildButton(
            text: 'Open SMS',
            onClicked: () => Utils.openSMS(phoneNumber: '+4912388128311'),
          ),
        ],
      ),
    ),
  );

  Widget buildButton({
    required String text,
    required VoidCallback onClicked,
  }) =>
      Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: ElevatedButton(
          onPressed: onClicked,
          child: Text(
            text,
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
}