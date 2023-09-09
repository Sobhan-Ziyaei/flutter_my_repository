import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const screenId = '/text_theme';
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'body small - سلام',
                style: theme.textTheme.bodySmall,
              ),
              Text(
                'body medium - چه طوری ؟',
                style: theme.textTheme.bodyMedium,
              ),
              Text(
                'body Large - حالت خوبه ؟',
                style: theme.textTheme.bodyLarge,
              ),
              Text(
                'title small - عنوان کوچک',
                style: theme.textTheme.titleSmall,
              ),
              Text(
                'title medium - عنوان متوسط',
                style: theme.textTheme.titleMedium,
              ),
              Text(
                'title large - عنوان بزرگ',
                style: theme.textTheme.titleLarge,
              ),
              Text(
                'label small - لیبل کوجک',
                style: theme.textTheme.labelSmall,
              ),
              Text(
                'label small - لیبل متوسط',
                style: theme.textTheme.labelMedium,
              ),
              Text(
                'label small - لیبل بزرگ',
                style: theme.textTheme.labelLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
