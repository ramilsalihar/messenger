final List<Chat> dummyData = [
  Chat(
    imageUrl: 'assets/images/image1.png',
    time: '23 ч 43 мин',
    message: 'Отлично выглядишь',
    isRead: true,
  ),
  Chat(
    imageUrl: 'assets/images/image2.png',
    time: '20 ч 40 мин',
    message: 'Встретимся? Я рядом',
    isRead: false,
  ),
  Chat(
    imageUrl: 'assets/images/image3.png',
    time: '18 ч 40 мин',
    message: 'Встретимся?',
    isRead: true,
  ),
  Chat(
    imageUrl: 'assets/images/image4.png',
    time: '09 ч 40 мин',
    message: 'Давно тебя хочу',
    isRead: true,
  ),
  Chat(
    imageUrl: 'assets/images/image5.png',
    time: '03 ч 04 мин',
    message: 'Я в ванной.. Скинь фото...',
    isRead: true,
  ),
  Chat(
    imageUrl: 'assets/images/image6.png',
    time: '01 ч 09 мин',
    message: 'Привет',
    isRead: true,
  ),
];

class Chat {
  final String imageUrl;
  final String time;
  final String message;
  final bool isRead;

  Chat({
    required this.imageUrl,
    required this.time,
    required this.message,
    required this.isRead,
  });
}
