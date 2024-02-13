import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier{
  
  bool initilaLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {

    notifyListeners();
  }
}