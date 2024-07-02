import 'package:flutter/material.dart';

class SendMessageBar extends StatefulWidget {
  const SendMessageBar({super.key});

  @override
  State<SendMessageBar> createState() => _SendMessageBarState();
}

class _SendMessageBarState extends State<SendMessageBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 50,
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.grey,
              size: 25,
            ),
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Сообщение...",
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.7),
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                suffixIcon: IconButton(
                  icon: Image.asset(
                    'assets/icons/zombie.png',
                    height: 30,
                  ),
                  onPressed: () {
                    print('Send message');
                  },
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.mic_none_outlined,
              color: Colors.grey.withOpacity(0.7),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
