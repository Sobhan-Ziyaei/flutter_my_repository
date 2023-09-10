import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);
  static const screenId = '/button_screen';
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: theme.elevatedButtonTheme.style,
                onPressed: () {},
                child: const Text('دکمه تو پر'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
