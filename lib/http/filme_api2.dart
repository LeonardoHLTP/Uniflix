import 'dart:convert';
import 'package:trabalho_consulta_api/model/filme.dart';

class FilmeApi2 {
  String respostaApi = '''
    [
      {
          "id": 2,
          "titulo": "Pantera Negra",
          "resumo":"Filme do Pantera Negra",
          "atores":"Chadwick Boseman",
          "capa":"https://upload.wikimedia.org/wikipedia/en/0/0c/Black_Panther_film_poster.jpg",
          "duracao":134
      },
      {
          "id": 3,
          "titulo": "Vingadores: Ultimato",
          "resumo":"Filme dos Vingadores",
          "atores":"Robert Downey Jr., Chris Evans, Scarlett Johansson",
          "capa":"https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg",
          "duracao":181
      }
    ]
  ''';

  Future<List<Filme>> getFilmesOffline2() async {
    final json = jsonDecode(respostaApi);
    final mapsFilme = json.cast<Map<String, dynamic>>();
    List<Filme> listFilmes = [];

    for (var map in mapsFilme) {
      Filme filme = Filme.fromJson(map);
      listFilmes.add(filme);
    }

    await Future.delayed(const Duration(seconds: 1));
    return listFilmes;
  }
}
