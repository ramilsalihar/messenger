import 'package:flutter/material.dart';
import 'package:messenger/presentation/widget/send_message_bar.dart';

class ChatOverviewPage extends StatelessWidget {
  const ChatOverviewPage({
    super.key,
    required this.imageUrl,
    required this.commonLikes,
  });

  final String imageUrl;
  final int commonLikes;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.canvasColor,
      appBar: AppBar(
        backgroundColor: theme.canvasColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CircleAvatar(
              radius: 20,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: theme.canvasColor,
            height: height * 0.1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 40,
                color: theme.colorScheme.primary,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/rocket.png',
                        height: 25,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '$commonLikes общих соблазна',
                        style: theme.textTheme.headlineMedium!.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icons/cancel.png',
                          height: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              height: height * 0.9,
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 80,
                      ),
                      child: Text('Начни общение'),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SendMessageBar(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
