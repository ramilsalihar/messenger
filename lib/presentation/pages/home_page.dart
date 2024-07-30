import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:messenger/presentation/pages/chats_page.dart';
import 'package:messenger/presentation/widget/app_bottom_bar.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 1;

  final PageController _pageController = PageController(
    initialPage: 1,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Theme.of(context).primaryColor,
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          children: const [
            Placeholder(),
            ChatsPage(),
            Placeholder(),
            Placeholder(),
          ],
        ),
        bottomNavigationBar: AppBottomBar(
          selectedIndex: selectedIndex,
          onItemTapped: (int index) {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
      ),
    );
  }
}
