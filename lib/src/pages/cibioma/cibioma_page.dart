import 'package:apmim/src/provider/especies_provider.dart';
import 'package:apmim/src/widgets/list_especies.dart';
import 'package:flutter/material.dart';

class CibiomaPage extends StatelessWidget {
  final especiesProvider = new EspeciesProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cibioma'),
        backgroundColor: Color(0xff005292),
      ),
      body: Container(
        child:listaespecies(),
      ),
    );
  }
  Widget listaespecies() {
    return FutureBuilder(
      future: especiesProvider.getEspecies(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return ListaEspecies(especies: snapshot.data);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
