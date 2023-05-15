import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('혈압 측정'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 70,
                  color: Colors.green,
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_left),
                ),
                const SizedBox(width: 8),
                const Text(
                  '5/15',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                IconButton(
                  iconSize: 70,
                  color: Colors.green,
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_right),
                )
              ],
            ),
            Container(
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('시간',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text('수축기(H)',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(width: 5),
                      Text('이완기(L)',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(width: 5),
                      Text('맥박',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                // color: Colors.amber,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.separated(
                  itemBuilder: (context, idx) => Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '10:00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 26),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Text(
                                    '120',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 27),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '80',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 27),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '80',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 27),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  separatorBuilder: (ctx, idx) => const SizedBox(height: 3),
                  itemCount: 3),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.lightGreen,
        child: const Center(
          child: ListTile(
            leading: Icon(Icons.star),
            title: Text(
              '통계',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
