import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:async';

import 'package:apmim/src/model/especies_model.dart';

class EspeciesProvider {

  String _url = '192.168.1.8:8000';

  Future<List<Especie>> getEspecies() async {
    final url = Uri.http(_url, 'especies');

    final resp = await http.get(url);
    final data = json.decode(resp.body);
  
    final especies = new Especies.fromJsonList(data);

    return especies.items;
  }
}
