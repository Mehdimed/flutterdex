import 'package:flutter/material.dart';
import 'package:flutterdex/models/pokemon.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    // recupere les données passé en argument
    final Pokemon pokemon =
        ModalRoute.of(context)!.settings.arguments as Pokemon;

    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
      ),
      body: Center(
        child: Column(
          children: [
            Hero(
              tag: pokemon.name,
              child: Image.network(
                  "https://mehdidex.herokuapp.com/images/pokemons/${pokemon.name}.png"),
            ),
            Text(
              pokemon.name,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
