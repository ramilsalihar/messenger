import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatTile extends StatefulWidget {
  const ChatTile({
    super.key,
    required this.imageUrl,
    required this.timestamp,
    required this.message,
    required this.isRead,
    required this.onTap,
  });

  final String imageUrl;
  final String timestamp;
  final String message;
  final bool isRead;
  final Function() onTap;

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  // late SlidableController swipeController;
  //
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 8,
        ),
        child: Slidable(
          groupTag: 'chat',
          // controller: swipeController,
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            dismissible: DismissiblePane(onDismissed: () {}),
            children: [
              SlidableAction(
                onPressed: (_) {},
                backgroundColor: const Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: Container(
            // color: Colors.grey,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Image.asset(
                  widget.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                widget.timestamp,
                style: theme.textTheme.headlineSmall,
              ),
              subtitle: Text(
                widget.message,
                style: theme.textTheme.headlineMedium,
              ),
              trailing: !widget.isRead
                  ? const Icon(
                      Icons.circle,
                      size: 5.0,
                      color: Colors.white,
                    )
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}
