import 'package:animate_do/animate_do.dart';
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

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!isLastPage && page >= (slides.length - 1.5)) {
        setState(() {
          isLastPage = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
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
                  })),
          isLastPage
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(milliseconds: 500),
                    child: FilledButton(
                      child: const Text('Start'),
                      onPressed: () {
                        context.pop();
                      },
                    ),
                  ),
                )
              : const SizedBox()
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
