import 'package:apmim/src/model/especies_model.dart';
import 'package:flutter/material.dart';

class ListaEspecies extends StatelessWidget {
  final List<Especie> especies;
  final Function siguientePagina;

  ListaEspecies({@required this.especies, @required this.siguientePagina});
  final _scrollController = new ScrollController(initialScrollOffset: 0.0);

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 0) {
        siguientePagina();
      }
    });

    return Container(
      child: ListView.builder(
        controller: _scrollController,
        itemCount: especies.length,
        itemBuilder: (BuildContext context, int index) {
          return _especieslista(context, especies[index]);
        },
      ),
    );
  }

  Widget _especieslista(BuildContext context, Especie especie) {
    final _screenSize = MediaQuery.of(context).size;
    final lista = Stack(
      children: <Widget>[
        FadeInImage(
          height: _screenSize.height * 0.4,
          width: _screenSize.width,
          image: NetworkImage(especie.getImg()),
          placeholder: AssetImage('assets/images/loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
        ),
        Positioned.fill(
            //bottom: _screenSize.height* 0.01,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              especie.especie,
              style: TextStyle(fontSize: 50.0),
            ),
          ],
        )),
      ],
    );
     return GestureDetector(
      child: lista,
      onTap: (){

        Navigator.pushNamed(context, 'animales', arguments: especie );

      },
    );

  }
}
