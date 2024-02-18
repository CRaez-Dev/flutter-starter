import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      imageUrl: 'assets/images/1.png'),
  SlideInfo(
      title: 'Fast Delivery',
      caption: 'Tempor qui adipisicing aliquip sint.',
      imageUrl: 'assets/images/2.png'),
  SlideInfo(
      title: 'Enjoy',
      caption:
          'Id proident laborum laborum qui ipsum aute reprehenderit eiusmod aliqua non deserunt eiusmod magna.',
      imageUrl: 'assets/images/3.png')
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            children:
                slides.map((slideInfo) => _Slide(slide: slideInfo)).toList(),
          ),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                  child: const Text("Skip"),
                  onPressed: () {
                    context.pop();
                  }))
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final SlideInfo slide;

  const _Slide({required this.slide});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(slide.imageUrl)),
            const SizedBox(
              height: 20,
            ),
            Text(
              slide.title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(slide.caption, style: captionStyle),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
