import 'package:flutter/material.dart';
import 'package:navigation/layout/default_layout.dart';

class RouteThreeScreen extends StatelessWidget {
  const RouteThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)?.settings.arguments;

    return DefaultLayout(
      title: 'Route Three Screen',
      children: [
        Text(
          argument.toString(),
          textAlign: TextAlign.center,
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop'),
        ),
      ],
    );
  }
}
