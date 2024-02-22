import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState() {
    _selectedVal = _cityList[0];
  }

  final _cityList = ["พิจิตร", "เพชรบูรณ์", "พิษณุโลก"];
  String _selectedVal = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'SMART CITY',
              style: SMCTextTheme.lightTextTheme.headlineLarge,
            ),
          ),
          Center(
            child: SizedBox(
                height: 290,
                width: 290,
                child: SvgPicture.asset(
                    'assets/images/undraw_location_search_re_ttoj.svg')),
          ),
          Center(
            child: Text(
              'คุณอยู่ที่ไหนตอนนี้',
              style: SMCTextTheme.lightTextTheme.headlineLarge,
            ),
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: DropdownButtonFormField(
              value: _selectedVal,
              items: _cityList.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  _selectedVal = val as String;
                });
              },
              // dropdownColor: Colors.amber,
              decoration: const InputDecoration(
                  labelText: "จังหวัด",
                  labelStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                  border: UnderlineInputBorder()
                ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: const Color(0xFFF4F3F2),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "ยืนยัน",
                  style: SMCTextTheme.lightTextTheme.headlineMedium,
                )),
          ),
        ],
      ),
    );
  }
}
