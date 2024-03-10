import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 5,
                offset: const Offset(0, 8),
              )
            ]),
        margin: const EdgeInsets.all(10),
        height: 700,
        width: 380,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: const Column(
            children: [
              Row(
                children: [
                  Text(
                    "การตั้งค่า",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text("ภาษา",
                          style: TextStyle(color: Colors.grey, fontSize: 24)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ภาษาไทย", style: TextStyle(fontSize: 24)),
                      Text("dropdown", style: TextStyle(fontSize: 24)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text("ธีม",
                          style: TextStyle(color: Colors.grey, fontSize: 24)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("โหมดมืด", style: TextStyle(fontSize: 24)),
                      Text("SwitchMode", style: TextStyle(fontSize: 24)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text("หน่วย", style: TextStyle(color: Colors.grey, fontSize: 24)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("หน่วยอุณหภูมิ",
                      style: TextStyle(fontSize: 24)),
                      Text("dropdown",
                      style: TextStyle(fontSize: 24)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
