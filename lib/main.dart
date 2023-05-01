import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BP Chekcer_v1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BPChecker(),
    );
  }
}

class BPChecker extends StatefulWidget {
  const BPChecker({super.key});

  @override
  State<BPChecker> createState() => _BPCheckerState();
}

class _BPCheckerState extends State<BPChecker> {
  String result = '';

  Future testPost() async {
    //testpost
    final String url = '${dotenv.env['SERVER_URL']}/user';
    final obj = {'name': result};
    var response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode(obj),
    );
    print('Response status: ${response.statusCode}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('혈압 측정기록'),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(children: [
            TextFormField(
              onChanged: (value) => {result = value},
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                testPost();
              },
              child: Text('저장'),
            ),
          ]),
        ),
      ),
    );
  }
}
