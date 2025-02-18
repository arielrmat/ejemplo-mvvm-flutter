import 'package:ejemplo_mvvm/models/pelicula_model.dart';

class PeliculaService {
  Future<List<Pelicula>> fetchPeliculas() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      Pelicula(
        titulo: "La loca historia del mundo",
        director: "Mel Brooks",
        genero: "COMEDIA",
        anyo: 1981,
      ),
      Pelicula(
        titulo: "Interstelar",
        director: "Christopher Nolan",
        genero: "AVENTURA-CIENCIA FICCION",
        anyo: 2014,
      ),
      Pelicula(
        titulo: "Gladiador",
        director: "Ridley Scott",
        genero: "AVENTURA-EPICA",
        anyo: 2014,
      ),
      Pelicula(
        titulo: "El rey león",
        director: "Roger Allers",
        genero: "ANIMACION",
        anyo: 1994,
      ),
    ];
  }
}
