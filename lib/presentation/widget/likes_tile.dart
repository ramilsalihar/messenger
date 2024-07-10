import 'package:flutter/material.dart';

class LikesTile extends StatelessWidget {
  const LikesTile({super.key, required this.isRead});

  final bool isRead;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Image.asset(
            'assets/images/like.png',
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          '44 человека тебя лайкнули',
          style: theme.textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.bold,
          ),
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
