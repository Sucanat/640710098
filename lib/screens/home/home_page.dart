import 'package:flutter/material.dart';

import '../../widgets/category_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // ให้ตำแหน่งใน Column มีการจัดกลุ่มกลาง
              children: [
                Text(
                  'Suchnanart Tankittiwat,',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // จัดกลุ่มปุ่มกลาง
                  children: [
                    Text(
                      'Ginner',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      'assets/images/hand_wave.png',
                      width: 40.0,
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Text('สวัสดีแห่งความพรีเมี่ยม', style: TextStyle(fontSize: 26.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      children: [
                        // ปุ่ม All Topics
                        CategoryButton(
                          text: 'ปัดได้ไม่จำกัด',
                          icon: Icons.face_unlock_outlined,
                          color: Colors.pinkAccent,
                          isSelected: value1,
                        ),
                        SizedBox(height: 16.0),
                        // ปุ่ม Popular
                        CategoryButton(
                          text: 'เห็นคนที่กดใจเรา',
                          icon: Icons.favorite,
                          color: Colors.pink,
                          isSelected: true,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      children: [
                        // ปุ่ม Newest
                        CategoryButton(
                          text: 'สามารถกดเก็บไว้ได้',
                          icon: Icons.add_shopping_cart,
                          color: Colors.purpleAccent,
                          isSelected: true,
                        ),
                        SizedBox(height: 16.0),
                        // ปุ่ม Advanced
                        CategoryButton(
                          text: 'คุยอย่างต่อเนื่องหรือสามารถไปต่อได้',
                          icon: Icons.accessibility,
                          color: Colors.deepOrange,
                          isSelected: true,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            value1 = !value1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('199 bahtThai/เดือน'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  CategoryButton(
                    text: 'ถูกใจก็กดสั่งซื้อเลย',
                    icon: Icons.assignment_turned_in,
                    color: Colors.redAccent,
                    isSelected: true,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
