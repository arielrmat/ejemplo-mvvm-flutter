import 'package:ejemplo_mvvm/viewmodels/pelicula_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PeliculaView extends StatelessWidget {
  const PeliculaView({super.key});

  @override
  Widget build(BuildContext context) {
    final peliculaViewModel = Provider.of<PeliculaViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Mis Peliculas")),
      body:
          peliculaViewModel.cargando
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemBuilder: (context, index) {
                  final pelicula = peliculaViewModel.peliculas[index];
                  return ListTile(
                    title: Text("${pelicula.titulo}(${pelicula.anyo})"),
                    subtitle: Text(
                      "Director: ${pelicula.director}, ${pelicula.genero}",
                    ),
                  );
                },
                itemCount: peliculaViewModel.peliculas.length,
              ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          peliculaViewModel.fetchPeliculas();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
