import 'package:flutter/material.dart';
import 'package:messenger/dummy_data.dart';
import 'package:messenger/widget/app_bottom_bar.dart';
import 'package:messenger/widget/chat_tile.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: theme.canvasColor,
            height: height * 0.25,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: ListView.builder(
                itemCount: dummyData.length,
                itemBuilder: (context, index) {
                  return ChatTile(
                    imageUrl: dummyData[index].imageUrl,
                    timestamp: dummyData[index].time,
                    message: dummyData[index].message,
                    isRead: dummyData[index].isRead,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: AppBottomBar(
        selectedIndex: 1,
        onItemTapped: (index) {},
      ),
    );
  }
}
