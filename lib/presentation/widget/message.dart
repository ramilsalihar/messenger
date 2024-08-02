
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Message extends StatelessWidget {
  final String message;
  final bool isMine;
  final DateTime date;
  static const int radius = 20;
  static const _borderRadius1 = Radius.circular(20);
  static const _borderRadius2 = Radius.circular(0);

  const Message({
    super.key,
    required this.message,
    required this.isMine,
    required this.date,
  });

  String _formatDate(DateTime date, BuildContext context) {
    final now = DateTime.now();
    final dateOnly = DateTime(date.year, date.month, date.day);
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));

    final checker = now.isAtSameMomentAs(today).toString();
    final out= '$today == $dateOnly : $checker';

    print(out);

    if (dateOnly.isAtSameMomentAs(today)) {
      return 'Сегодя';
    } else if (dateOnly.isAtSameMomentAs(yesterday)) {
      return 'Вчера';
    } else {
      return DateFormat('d MMMM yyyy', Localizations.localeOf(context).toString()).format(date);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            _formatDate(date, context),
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          )
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isMine ? Colors.black : Colors.grey[800],
              borderRadius: BorderRadius.only(
                topLeft: _borderRadius1,
                topRight: _borderRadius1,
                bottomLeft: isMine ? _borderRadius1 : _borderRadius2,
                bottomRight: isMine ? _borderRadius2 : _borderRadius1,
              ),
            ),
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
