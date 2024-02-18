import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  static const name = 'infinite_scroll_screen';
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imagesIds = [1, 2, 3, 4, 5];
  bool isLoading = false;
  bool isMounted = true;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        loadNextPage();
      }
    });
  }

  Future loadNextPage() async {
    if (isLoading) return;
    if (!isMounted) return; // Check if the Widget is mounted
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));
    addIdImages();
    isLoading = false;

    setState(() {});
    moveScrollToBottom();
  }

  @override
  void dispose() {
    scrollController.dispose();
    isMounted = false;
    super.dispose();
  }

  void addIdImages() {
    final last = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => e + last));
  }

  Future<void> onRefreshHandle() async {
    if (!isMounted) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));

    final last = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(last + 1);
    addIdImages();

    isLoading = false;
    setState(() {});
  }

  void moveScrollToBottom() {
    if (scrollController.position.pixels + 150 <=
        scrollController.position.maxScrollExtent) return;
    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: const Text('Infinite scroll and pull refresh'),
      // ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          edgeOffset: 10,
          strokeWidth: 2,
          onRefresh: () => onRefreshHandle(),
          child: ListView.builder(
            controller: scrollController,
            itemCount: imagesIds.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 300,
                  placeholder:
                      const AssetImage('assets/images/jar-loading.gif'),
                  image: NetworkImage(
                      'https://picsum.photos/id/${imagesIds[index]}/500/300'));
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        //child: const Icon(Icons.arrow_back_ios_outlined),
        child: isLoading
            ? FadeIn(
                child: SpinPerfect(
                    infinite: true, child: const Icon(Icons.refresh_rounded)),
              )
            : FadeIn(child: const Icon(Icons.arrow_back_ios_outlined)),
      ),
    );
  }
}
