import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  const PriceCard({
    super.key,
    required this.quantity,
    required this.price,
    this.imageUrl,
  });

  final int quantity;
  final int price;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 90,
          width: 110,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    quantity.toString(),
                    style: theme.textTheme.headlineLarge,
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    'assets/icons/incognito.png',
                    height: 20,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                '$price P',
                style: theme.textTheme.headlineLarge,
              ),
            ],
          ),
        ),
        if (imageUrl != null)
          Positioned(
            right: 10,
            top: -15,
            child: Image.asset(
              imageUrl!,
              height: 30,
            ),
          ),
      ],
    );
  }
}
