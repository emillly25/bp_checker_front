import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC8FAEA),
      appBar: AppBar(
        title: const Center(
          child: Text(
            '측정 기록',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
        backgroundColor: const Color(0xFF6CD2CD),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF6CD2CD),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insights),
            label: '통계',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '앱 설정',
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            color: const Color(0xFFFFFFFF),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                ),
                const Text(
                  '오늘',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.teal,
            height: 240,
            width: double.maxFinite,
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '평균 120 - 125',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  '입력 시간',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                ),
                Text(
                  '수축',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                ),
                Text(
                  '확장',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                ),
                Text(
                  '맥박',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => Container(
                height: 88,
                color: const Color(0xFFFFFFFF),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text(
                          '오전',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '10:00',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '90',
                          style: TextStyle(
                            color: Color(0xFF18D79D),
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'mmHg',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.2),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '118',
                          style: TextStyle(
                            color: Color(0xFFF69A73),
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'mmHg',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.2),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '100',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.8),
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'bpm',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.2),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              separatorBuilder: (ctx, idx) => const SizedBox(height: 4),
              itemCount: 5,
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xFF6CD2CD),
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Icon(
          Icons.add,
          size: 30,
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
