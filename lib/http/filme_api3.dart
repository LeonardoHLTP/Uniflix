import 'dart:convert';
import 'package:trabalho_consulta_api/model/filme.dart';

class FilmeApi3 {
  String respostaApi = '''
    [
      {
          "id": 4,
          "titulo": "Homem-Aranha: Longe de Casa",
          "resumo":"Filme do Homem-Aranha",
          "atores":"Tom Holland, Jake Gyllenhaal",
          "capa":"https://upload.wikimedia.org/wikipedia/en/f/f9/Spider-Man_Far_From_Home_poster.jpg",
          "duracao":129
      },
      {
          "id": 5,
          "titulo": "Thor: Ragnarok",
          "resumo":"Filme do Thor",
          "atores":"Chris Hemsworth, Tom Hiddleston",
          "capa":"https://upload.wikimedia.org/wikipedia/en/7/7d/Thor_Ragnarok_poster.jpg",
          "duracao":130
      }
    ]
  ''';

  Future<List<Filme>> getFilmesOffline3() async {
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
