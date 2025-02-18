import 'package:ejemplo_mvvm/models/pelicula_model.dart';
import 'package:ejemplo_mvvm/services/pelicula_service.dart';
import 'package:flutter/foundation.dart';

class PeliculaViewModel extends ChangeNotifier {
  final PeliculaService _peliculaService = PeliculaService();
  List<Pelicula> _peliculas = [];
  bool _cargando = false;

  List<Pelicula> get peliculas => _peliculas;
  bool get cargando => _cargando;

  Future<void> fetchPeliculas() async {
    _cargando = true;
    notifyListeners();

    _peliculas = await _peliculaService.fetchPeliculas();

    _cargando = false;
    notifyListeners();
  }
}
