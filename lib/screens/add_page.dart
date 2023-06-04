import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    final highController = TextEditingController();
    final lowController = TextEditingController();
    final purseController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: BorderDirectional(
                    bottom: BorderSide(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                    ),
                  ),
                ),
                height: 48,
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        '취소',
                        style: TextStyle(
                          color: Color(0xFFFF0000),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Text(
                      '측정 입력',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.8),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        //
                      },
                      child: const Text(
                        '저장',
                        style: TextStyle(
                            color: Color(0xFF6CD2CD),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      height: 124,
                      width: double.maxFinite,
                      color: Colors.pink,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '입력일',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: const [Text('날짜'), Text('시간')],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      height: 112,
                      width: double.maxFinite,
                      color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '수축기 혈압',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          TextField(
                            cursorWidth: 2,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(fontSize: 40),
                            controller: highController,
                            decoration: const InputDecoration(
                              hintText: '수축기 혈압',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                              suffixText: 'mmHg',
                              suffixStyle: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.4),
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(0, 0, 0, 0.15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(0, 0, 0, 0.15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      height: 112,
                      width: double.maxFinite,
                      color: Colors.yellow,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '이완기 혈압',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          TextField(
                            cursorWidth: 2,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(fontSize: 40),
                            controller: lowController,
                            decoration: const InputDecoration(
                              hintText: '이완기 혈압',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                              suffixText: 'mmHg',
                              suffixStyle: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.4),
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(0, 0, 0, 0.15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(0, 0, 0, 0.15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      height: 112,
                      width: double.maxFinite,
                      color: Colors.tealAccent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '맥박',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          TextField(
                            cursorWidth: 2,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(fontSize: 40),
                            controller: purseController,
                            decoration: const InputDecoration(
                              hintText: '맥박',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                              ),
                              suffixText: 'bpm',
                              suffixStyle: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.4),
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(0, 0, 0, 0.15),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(0, 0, 0, 0.15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
