import 'package:flutter/material.dart';

class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    
    Widget starsRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.star, color: Colors.black, size: 18),
            Icon(Icons.star, color: Colors.black, size: 18),
            Icon(Icons.star, color: Colors.black, size: 18),
            Icon(Icons.star, color: Colors.black, size: 18),
            Icon(Icons.star, color: Colors.black, size: 18),
          ],
        ),
        const Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400, 
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 16,
          ),
        ),
      ],
    );

    
    const textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400, 
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 14,
      height: 1.5,
    );

    
    Widget iconListRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: const [
            Icon(Icons.kitchen, color: Colors.green),
            Text('PREP:', style: textStyle),
            Text('25 min', style: textStyle),
          ],
        ),
        Column(
          children: const [
            Icon(Icons.timer, color: Colors.green),
            Text('COOK:', style: textStyle),
            Text('1 hr', style: textStyle),
          ],
        ),
        Column(
          children: const [
            Icon(Icons.restaurant, color: Colors.green),
            Text('FEEDS:', style: textStyle),
            Text('4-6', style: textStyle),
          ],
        ),
      ],
    );

    
    Widget leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          // ส่วนหัวเรื่อง (Title)
          const Text(
            'Strawberry Pavlova',
            style: TextStyle(
              fontWeight: FontWeight.w500, 
              letterSpacing: 0.5,
              fontSize: 26,
            ),
          ),
          const SizedBox(height: 15),
          // คำอธิบาย (Description)
          const Text(
            'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
            'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w300, 
              fontSize: 16,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 20),
          starsRow,
          const SizedBox(height: 25),
          iconListRow,
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sophonwit patihet 6812732139'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          width: 440,
          child: Card(
            elevation: 4,
            child: leftColumn,
          ),
        ),
      ),
    );
  }
}