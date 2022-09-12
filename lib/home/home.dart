import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutterdex/models/pokemon.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Pokemon> _pokemons = [];

  Future<void> fetchPokemons() async {
    List<Pokemon> myPokemons;
    final response =
        await http.get(Uri.parse('https://mehdidex.herokuapp.com/pokemon'));

    if (response.statusCode == 200) {
      myPokemons = (json.decode(response.body) as List)
          .map((i) => Pokemon.fromJson(i))
          .toList();
      setState(() {
        _pokemons = myPokemons;
      });
    } else {
      throw Exception('Failed to load pokemons');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterDex'),
      ),
      body: ListView.builder(
        itemCount: _pokemons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Theme.of(context).colorScheme.background,
              leading: Hero(
                tag: _pokemons[index].name,
                child: Image.network(
                    "https://mehdidex.herokuapp.com/images/pokemons/${_pokemons[index].name}.png"),
              ),
              title: Text(
                _pokemons[index].name,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              trailing: Text(
                '#${_pokemons[index].id.toString()}',
                style: Theme.of(context).textTheme.labelSmall,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/profil',
                    arguments: _pokemons[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
