import 'dart:convert';
import 'package:trabalho_consulta_api/model/filme.dart';

class FilmeApi3 {
  String respostaApi = '''
    [
           {
        "id": 6,
        "titulo": "Barbie: Princesa e a Plebéia",
        "resumo": "Filme da Barbie",
        "atores": "Kelly Sheridan",
        "capa": "https://exemplo.com/barbie.jpg",
        "duracao": 90
      },
      {
        "id": 7,
        "titulo": "O Mágico de Oz",
        "resumo": "Filme do Mágico de Oz",
        "atores": "Judy Garland",
        "capa": "https://exemplo.com/magico_de_oz.jpg",
        "duracao": 102
      }
    ]
    ''';
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