import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:toktik/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:toktik/ui/providers/discover_provider.dart';
import 'package:toktik/ui/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DiscoverProvider(repository: VideoPostRepositoryImpl(videosDataSource: LocalVideoDataSourceImpl()))..loadNextPage(),),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'TokTik',
          theme: Apptheme().getTheme(),
          home: const DiscoverScreen()),
    );
  }
}
