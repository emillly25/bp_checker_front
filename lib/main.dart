import 'package:bp_checker_front/screens/add_page.dart';
import 'package:bp_checker_front/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const BpChecker());
}

class BpChecker extends StatelessWidget {
  const BpChecker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BP Chekcer_v1',
      home: const BPChecker(),
      routes: {
        '/add': (context) => const AddPage(),
      },
    );
  }
}

class BPChecker extends StatelessWidget {
  const BPChecker({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}



  // Future testPost() async {
  //   //testpost
  //   final String url = '${dotenv.env['SERVER_URL']}/user';
  //   final obj = {'name': result};
  //   var response = await http.post(
  //     Uri.parse(url),
  //     headers: {
  //       'Content-Type': 'application/json',
  //     },
  //     body: json.encode(obj),
  //   );
  //   print('Response status: ${response.statusCode}');
  // }