import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/ui/providers/discover_provider.dart';
import 'package:toktik/ui/widgets/shared/videoPlayer/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
        body: discoverProvider.initilaLoading
            ? const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              )
            : VideoScrollableView(videos : discoverProvider.videos));
  }
}
