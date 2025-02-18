import 'package:ejemplo_mvvm/viewmodels/pelicula_viewmodel.dart';
import 'package:ejemplo_mvvm/views/pelicula_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PeliculaViewModel())],
      child: MaterialApp(home: PeliculaView()),
    );
  }
}
