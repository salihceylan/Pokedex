import 'package:flutter/material.dart';
import 'package:pokemon/pokedex.dart';

class PokemonDetail extends StatelessWidget {
  Pokemon pokemon;

  PokemonDetail({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        centerTitle: true,
        elevation: 15,
        title: Text(pokemon.name),
      ),
      body: Stack(
        children: [
          Positioned(
            height: MediaQuery.of(context).size.height * (2 / 3),
            width: MediaQuery.of(context).size.width - 20,
            left: 10,
            top: MediaQuery.of(context).size.height / 10,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 15,
              shadowColor: Colors.yellow,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
                tag: pokemon.img,
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.network(pokemon.img),
                )),
          ),
        ],
      ),
    );
  }
}
