import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Favorites will be listed here',
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
