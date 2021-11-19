import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeApiRepository {
  final String api = "https://rickandmortyapi.com/api/character";

  Future<http.Response> getCharacters() async {
    var url = api;
    return await http.get(Uri.parse(url));
    //return await http.get("${api}character", headers: <String, String>{
    //'Content-Type': 'application/json; charset=UTF-8',
    // });
  }
}
