import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SMART CITY',
            style: SMCTextTheme.lightTextTheme.headlineLarge,
          ),
          Container(
            height: 290,
            width: 290,
            child: SvgPicture.asset('assets/images/undraw_location_search_re_ttoj.svg')),
          Column(
            children: [
              Center(
                child: Text(
                  'คุณอยู่ที่ไหนตอนนี้',
                  style: SMCTextTheme.lightTextTheme.headlineLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(color: Color(0xFFF4F3F2), borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                TextButton(onPressed: (){}, child: Text("ยืนยัน",style: SMCTextTheme.lightTextTheme.headlineMedium ,))
              ]),
          ),
        ],
      ),
    );
  }
}
