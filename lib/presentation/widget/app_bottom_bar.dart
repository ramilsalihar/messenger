import 'package:flutter/material.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final int selectedIndex;
  final void Function(int) onItemTapped;

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      currentIndex: widget.selectedIndex,
      items: [
        customNavBarItem('assets/icons/home.png', 0, context),
        customNavBarItem('assets/icons/chat.png', 1, context),
        customNavBarItem('assets/icons/favorites.png', 2, context),
        customNavBarItem('assets/icons/settings.png', 3, context),
      ],
      onTap: widget.onItemTapped,
    );
  }

  BottomNavigationBarItem customNavBarItem(
    String path,
    int index,
    BuildContext context,
  ) {
    final theme = Theme.of(context);
    return BottomNavigationBarItem(
      label: '',
      icon: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 25,
            width: 25,
            child: widget.selectedIndex == index
                ? Image.asset(
                    path,
                    color: theme.colorScheme.secondary,
                  )
                : Image.asset(
                    path,
                  ),
          ),
        ],
      ),
    );
  }
}
