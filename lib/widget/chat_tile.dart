import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.imageUrl,
    required this.timestamp,
    required this.message,
    required this.isRead,
  });

  final String imageUrl;
  final String timestamp;
  final String message;
  final bool isRead;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 8,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          timestamp,
          style: theme.textTheme.headlineSmall,
        ),
        subtitle: Text(
          message,
          style: theme.textTheme.headlineMedium,
        ),
        trailing: !isRead
            ? const Icon(
                Icons.circle,
                size: 5.0,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
