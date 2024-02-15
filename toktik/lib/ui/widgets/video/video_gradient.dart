import 'package:flutter/material.dart';

class VideoGradient extends StatelessWidget {
  final List<Color> colors;
  final List<double> stops;
  const VideoGradient(
      {super.key, this.colors = const [Colors.transparent, Colors.black], required this.stops});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                stops: stops,
                colors: colors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
      ),
    );
  }
}
