import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlideShowWidget extends StatefulWidget {
  const SlideShowWidget({super.key});

  @override
  State<SlideShowWidget> createState() => _SlideShowWidgetState();
}

class _SlideShowWidgetState extends State<SlideShowWidget> {

  int activeIndex = 0;

  final List<String> _imagePaths = [
    'assets/images/slideshow/74f4f548392fbdafbe8a5d9764c83eaf.jpg',
    'assets/images/slideshow/b45f61cad5107ce54fc525e759d8b7b6.jpg',
    'assets/images/slideshow/gym-a410d34bd6.jpg',
  ];

  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 150,
              width: 380,
              margin: const EdgeInsets.all(10),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 100,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: _imagePaths.map((item) => Image.asset(item)).toList(),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: _imagePaths.length,
              
              effect: const WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Color(0xff3559E0),
                type: WormType.thinUnderground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:carousel_slider/carousel_controller.dart';

// class SlideShowWidget extends StatefulWidget {
//   SlideShowWidget({Key? key}) : super(key: key);

//   @override
//   State<SlideShowWidget> createState() => _SlideShowWidget();
// }

// class _SlideShowWidget extends State<SlideShowWidget> {
//   int activeIndex = 0;
//   final controller = CarouselController();
//   final urlImages = [
//     'https://images.unsplash.com/photo-1612825173281-9a193378527e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=499&q=80',
//     'https://images.unsplash.com/photo-1580654712603-eb43273aff33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
//     'https://images.unsplash.com/photo-1627916607164-7b20241db935?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
//     'https://images.unsplash.com/photo-1522037576655-7a93ce0f4d10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
//     'https://images.unsplash.com/photo-1570829053985-56e661df1ca2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 40, 40, 35),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CarouselSlider.builder(
//                 carouselController: controller,
//                 itemCount: urlImages.length,
//                 itemBuilder: (context, index, realIndex) {
//                   final urlImage = urlImages[index];
//                   return buildImage(urlImage, index);
//                 },
//                 options: CarouselOptions(
//                     height: 400,
//                     autoPlay: true,
//                     enableInfiniteScroll: false,
//                     autoPlayAnimationDuration: Duration(seconds: 2),
//                     enlargeCenterPage: true,
//                     onPageChanged: (index, reason) =>
//                         setState(() => activeIndex = index))),
//             SizedBox(height: 12),
//             buildIndicator()
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildIndicator() => AnimatedSmoothIndicator(
//         onDotClicked: animateToSlide,
//         effect: ExpandingDotsEffect(dotWidth: 15, activeDotColor: Colors.blue),
//         activeIndex: activeIndex,
//         count: urlImages.length,
//       );

//   void animateToSlide(int index) => controller.animateToPage(index);
// }

// Widget buildImage(String urlImage, int index) =>
//     Container(child: Image.network(urlImage, fit: BoxFit.cover));
