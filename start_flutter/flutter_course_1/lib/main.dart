import 'package:flutter/material.dart';
import 'package:flutter_course_1/widgets/currencyCard.dart';
import 'package:flutter_course_1/widgets/myButton.dart';

class Player {
  String name;

  Player({required this.name});
}

void main() {
  //var nico = Player(name: 'yun');
  runApp(const MyApp()); //root widget
}

//MyApp이란 위젯을 만드는 과정
//위젯은 항상 core widget 3가지 중 하나를 상속받아야 함
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey selena',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  'Total balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      text: 'Transfer',
                      bgColor: Color(0xFFf1b33b),
                      textColor: Colors.black,
                    ),
                    MyButton(
                      text: 'Request',
                      bgColor: Color(0xff1f2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Wallets',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(255, 255, 255, 0.698),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const currencyCard(
                  bgColor: Color(0xff181818),
                  textColor: Colors.white,
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  offset: 0,
                ),
                const currencyCard(
                  bgColor: Color.fromARGB(255, 255, 255, 255),
                  textColor: Colors.black,
                  name: 'Dollar',
                  code: 'USD',
                  amount: '55 622',
                  icon: Icons.monetization_on_outlined,
                  offset: -20,
                ),
                const currencyCard(
                  bgColor: Color(0xff181818),
                  textColor: Colors.white,
                  name: 'Rupee',
                  code: 'INR',
                  amount: '28 981',
                  icon: Icons.currency_rupee_rounded,
                  offset: -40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
