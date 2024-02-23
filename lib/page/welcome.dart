import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  _WelcomePageState() {
    _selectedVal = _cityList[0];
  }

  final _cityList = ["พิจิตร", "เพชรบูรณ์", "พิษณุโลก"];
  String _selectedVal = "";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // color: Colors.amber,
              alignment: Alignment.center,
              child: Text(
                'SMART CITY',
                // style: themeSystem == ThemeMode.light ? SMCTextTheme.lightTextTheme.headlineLarge : SMCTextTheme.darkTextTheme.titleLarge,
                style: SMCTextTheme.lightTextTheme.headlineLarge,
              ),
            ),
            Container(
              // color: Colors.amber.shade100,
              alignment: Alignment.center,
              child: SizedBox(
                  height: 290,
                  width: 290,
                  child: SvgPicture.asset(
                      'assets/images/undraw_location_search_re_ttoj.svg')),
            ),
            Container(
              // color: Colors.amber.shade200,
              alignment: Alignment.center,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'เลือกที่อยู่สิวะ',
                    style: SMCTextTheme.lightTextTheme.headlineMedium,
                  ),
                  SizedBox(
                    height: 60,
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
                          border: UnderlineInputBorder()),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F3F2),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "ยืนยัน",
                          style: SMCTextTheme.lightTextTheme.headlineMedium,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
