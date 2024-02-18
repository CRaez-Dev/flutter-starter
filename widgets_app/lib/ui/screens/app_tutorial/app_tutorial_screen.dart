import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
      {required this.title, required this.caption, required this.imageUrl});
}

final slides = <SlideInfo>[
  SlideInfo(
      title: 'Find a dish',
      caption:
          'Magna dolor ad aliqua irure sunt voluptate in ad proident in voluptate est aliquip.',
      imageUrl: 'assetes/images/1.png'),
  SlideInfo(
      title: 'Fast Delivery',
      caption: 'Tempor qui adipisicing aliquip sint.',
      imageUrl: 'assetes/images/2.png'),
  SlideInfo(
      title: 'Enjoi',
      caption:
          'Id proident laborum laborum qui ipsum aute reprehenderit eiusmod aliqua non deserunt eiusmod magna.',
      imageUrl: 'assetes/images/3.png')
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map((slideInfo) => _Slide(slide: slideInfo)).toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final SlideInfo slide;

  const _Slide({required this.slide});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
