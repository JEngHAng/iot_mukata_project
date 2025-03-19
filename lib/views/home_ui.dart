import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iot_mukata_project/views/cal_bill_ui.dart';
import 'package:iot_mukata_project/views/About_ui.dart';
import 'package:iot_mukata_project/views/menu_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  //สร้าง item ของ AnimatedNotchBottomBar
  final pageCtrl = NotchBottomBarController(index: 1);

  //สร้างตัวแปรเก็บค่า index ของ pageที่แสดง เพจแรกคือ 1 สร้างเป็น List
  List<Widget> itemUIShow = [
    CallBillUI(),
    MenuUI(),
    AboutUI(),
  ];
  //สร้างตัวแปรเก็บข้อมูลของแต่ละเพจ
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'Tech SAU BUFFEET',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
        onTap: (valueParam) {
          setState(() {
            selectedIndex = valueParam;
          });
        },
        notchBottomBarController: pageCtrl,
        color: Colors.deepOrange,
        notchColor: Colors.deepOrange,
        kIconSize: 24,
        kBottomRadius: 28,
        bottomBarItems: [
          BottomBarItem(
            itemLabel: "คิดเงิน",
            activeItem: Icon(
              FontAwesomeIcons.moneyBill1Wave,
              color: Colors.white,
            ),
            inActiveItem: Icon(
              FontAwesomeIcons.moneyBillWave,
              color: Colors.white,
            ),
          ),
          BottomBarItem(
            itemLabel: "หน้าหลัก",
            activeItem: Icon(
              Icons.home,
              color: Colors.white,
            ),
            inActiveItem: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          BottomBarItem(
            itemLabel: "เกี่ยวกับ",
            activeItem: Icon(
              FontAwesomeIcons.star,
              color: Colors.white,
            ),
            inActiveItem: Icon(
              FontAwesomeIcons.star,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: itemUIShow[selectedIndex],
    );
  }
}
