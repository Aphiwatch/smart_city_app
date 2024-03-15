import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String dropdownLangValue = 'ไทย';
  String dropdownTempValue = '°C';



  bool _lights = false;
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
          child:  Column(
            children: [
              const Row(
                children: [
                  Text(
                    "การตั้งค่า",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const Row(
                    children: [
                      Text("ภาษา",
                          style: TextStyle(color: Colors.grey, fontSize: 24)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("ภาษาไทย", style: TextStyle(fontSize: 24)),
                      DropdownButton<String>(
                        value: dropdownLangValue,
                        icon: const Icon(Icons.arrow_drop_down),
                        underline: Container(
                          height: 1,
                          color: Colors.white,
                        ),
                        onChanged: (String? newValue){
                          setState(() {
                            dropdownLangValue = newValue!;
                          });
                        },
                        items: const [
                          DropdownMenuItem<String>(
                            value: 'ไทย',
                            child: Text('ภาษาไทย'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'English',
                            child: Text('English'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const Row(
                    children: [
                      Text("ธีม",
                          style: TextStyle(color: Colors.grey, fontSize: 24)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("โหมดมืด", style: TextStyle(fontSize: 24)),
                      CupertinoSwitch(value: _lights, onChanged: (bool value){
                        setState(() {
                          _lights = value;
                        });
                      }),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const Row(
                    children: [
                      Text("หน่วย", style: TextStyle(color: Colors.grey, fontSize: 24)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("หน่วยอุณหภูมิ",
                      style: TextStyle(fontSize: 24)),
                      DropdownButton<String>(
                        value: dropdownTempValue,
                        icon: const Icon(Icons.arrow_drop_down),
                        underline: Container(
                          height: 1,
                          color: Colors.white,
                        ),
                        onChanged: (String? newTempValue){
                          setState(() {
                            dropdownTempValue = newTempValue!;
                          });
                        },
                        items: const [
                          DropdownMenuItem<String>(
                            value: '°C',
                            child: Text('°C'),
                          ),
                          DropdownMenuItem<String>(
                            value: '°F',
                            child: Text('°F'),
                          ),
                        ],
                      ),
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
