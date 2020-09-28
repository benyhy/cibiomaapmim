import 'package:apmim/src/model/especies_model.dart';
import 'package:flutter/material.dart';

class ListaEspecies extends StatelessWidget {
  final List<Especie> especies;
  
  ListaEspecies({@required this.especies});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: especies.length,
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: <Widget>[
            FadeInImage(
              height: _screenSize.height * 0.4,
              width: _screenSize.width,
              image: NetworkImage(especies[index].getImg()),
              placeholder: AssetImage('assets/images/loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              //bottom: _screenSize.height* 0.01,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    especies[index].especie ,
                    style: TextStyle(fontSize: 50.0),
                  ),
                ],   
              )      
            ),
          ],
        );
      },
    );
  }
}
