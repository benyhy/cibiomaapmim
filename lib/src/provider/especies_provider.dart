import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:async';

import 'package:apmim/src/model/especies_model.dart';

class EspeciesProvider {
  String _url = '192.168.1.8:8000';
  int _especiesPage = 0;

  List<Especie> _especies = new List();
  final _especiesStream = StreamController<List<Especie>>.broadcast();

  Function(List<Especie>) get especiesSink => _especiesStream.sink.add;
  Stream<List<Especie>> get especiesStream => _especiesStream.stream; 

  void disposeStreams() {
    _especiesStream?.close();
  }

   Future<List<Especie>> _procesarRespuesta(Uri url) async {
    
    final resp = await http.get(url);
    final decodedata = json.decode(resp.body);
    final especies = new Especies.fromJsonList(decodedata['data']);
    return especies.items;

  }
  Future<List<Especie>> getEspecies() async {
    _especiesPage++;
    final url =
        Uri.http(_url, 'api/especies', {'page': _especiesPage.toString()});
    final resp = await _procesarRespuesta(url);
    _especies.addAll(resp);
    especiesSink( _especies ); 
    return resp;
   
    

    
  }
}
