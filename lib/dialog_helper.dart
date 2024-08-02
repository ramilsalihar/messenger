import 'package:flutter/material.dart';
import 'package:messenger/presentation/widget/app_button.dart';
import 'package:messenger/presentation/widget/price_card.dart';

mixin DialogHelper<T extends StatefulWidget> on State<T> {
  void showSubscription(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (context) => const CustomBottomSheet(),
    );
  }
}

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
        width: width,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: theme.colorScheme.onSecondaryContainer,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(0.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/icons/big_glasses.png',
              height: 70,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'РЕЖИМ ',
                    style: theme.textTheme.headlineLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'ИНКОГНИТО ',
                    style: theme.textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  TextSpan(
                    text: 'НА 24 ЧАСА',
                    style: theme.textTheme.headlineLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Text(
              'Стань невидимкой в ленте и чатах, скрой\n объявление и наслаждайся <Space> незамеченным',
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PriceCard(quantity: 1, price: 99),
                PriceCard(
                    quantity: 3, price: 199, imageUrl: 'assets/icons/hit.png'),
                PriceCard(
                  quantity: 7,
                  price: 399,
                  imageUrl: 'assets/icons/discount.png',
                )
              ],
            ),
            const AppButton(),
            Text(
              'УСЛОВИЯ И ПОЛОЖЕНИЯ',
              style: theme.textTheme.headlineLarge,
            )
          ],
        ),
      ),
      Positioned(
        right: 0,
        top: 0,
        child: IconButton(
          icon: const Icon(Icons.close, color: Colors.grey),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    ]);
  }
}
