import 'package:flutter/material.dart';
import 'package:messenger/dialog_helper.dart';
import 'package:messenger/dummy_data.dart';
import 'package:messenger/presentation/pages/chat_overview_page.dart';
import 'package:messenger/presentation/widget/chat_tile.dart';
import 'package:messenger/presentation/widget/likes_tile.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> with DialogHelper {
  // @override
  // void initState() {
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     showSubscription(context);
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(8),
                ),
                color: theme.canvasColor,
              ),
              child: Image.asset(
                'assets/layout/background.png',
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: height * 0.7,
                child: Container(
                  decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 15,
                            right: 15,
                            // bottom: 10,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'ЧАТЫ',
                                style: theme.textTheme.displayLarge,
                              ),
                              const Spacer(),
                              Text(
                                'OFF',
                                style: theme.textTheme.displayLarge,
                              ),
                              const SizedBox(width: 15),
                              SizedBox(
                                height: 30,
                                child: Image.asset('assets/icons/glasses.png'),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: dummyData.length + 1,
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              return const LikesTile(isRead: false);
                            } else {
                              return ChatTile(
                                  imageUrl: dummyData[index - 1].imageUrl,
                                  timestamp: dummyData[index - 1].time,
                                  message: dummyData[index - 1].message,
                                  isRead: dummyData[index - 1].isRead,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ChatOverviewPage(
                                          imageUrl:
                                              dummyData[index - 1].imageUrl,
                                          commonLikes: 2,
                                        ),
                                      ),
                                    );
                                  });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
