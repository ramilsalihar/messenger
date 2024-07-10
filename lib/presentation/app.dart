import 'package:flutter/material.dart';
import 'package:messenger/core/routes/app_router.dart';
import 'package:messenger/presentation/theme/app_theme.dart';

class Messenger extends StatelessWidget {
  const Messenger({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    return MaterialApp.router(
      title: 'Chat App',
      theme: AppTheme.theme,
      routerConfig: router.config(),
    );
  }
}
