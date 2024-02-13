class VideoPost {
  final String caption;
  final String videoUtl;
  final int likes;
  final int views;

  VideoPost(
      {required this.caption,
      required this.videoUtl,
      this.likes = 0,
      this.views = 0});
}
