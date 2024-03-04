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

  final controller = CarouselController();

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
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: ),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider.builder(
                carouselController: controller,
                itemCount: _imagePaths.length,
                itemBuilder: (context, index, realIndex) {
                  final imagePath = _imagePaths[index];
                  return buildImage(imagePath, index);
                },
                options: CarouselOptions(
                  height: 100,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  // viewportFraction: 0.8,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                ),
                // items: _imagePaths.map((item) => Image.asset(item)).toList(),
              ),
              //
              Container(
                alignment: Alignment.centerLeft,
                child: buildIndicator())
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
            onDotClicked: animateToSlide,
            count: _imagePaths.length,
            effect: const ScaleEffect(
              dotWidth: 6,
              dotHeight: 6, 
              activeDotColor: Color(0xff3559E0),
              dotColor: Colors.black, 
              ),
            activeIndex: activeIndex,
          );
  void animateToSlide(int index) => controller.animateToPage(index);
}
Widget buildImage(String imagePath, int index) =>
    Image.asset(imagePath, fit: BoxFit.cover);