import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/ui/widgets/shared/videoPlayer/video_buttons.dart';
import 'package:toktik/ui/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            //Video Player + Gradient
            SizedBox.expand(
              child: FullScreenPlayer(
                url: videoPost.videoUrl,
                caption: videoPost.caption,
              ),
            ),

            // Buttons
            Positioned(
                bottom: 40, right: 40, child: VideoButtons(video: videoPost))
          ],
        );
      },
    );
  }
}
