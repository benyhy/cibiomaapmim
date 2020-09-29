import 'package:apmim/src/model/animales_model.dart';
import 'package:apmim/src/model/especies_model.dart';
import 'package:apmim/src/provider/especies_provider.dart';
import 'package:flutter/material.dart';

class AnimalesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Especie especies = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text('Animales'),
          backgroundColor: Color(0xff005292),
        ),
        body: Center(
          child: _animalesviwe(especies),
        ));
  }

  Widget _animalesviwe(Especie especie) {
    final especiesProvider = new EspeciesProvider();

    return FutureBuilder(
      future: especiesProvider.getAnimales(especie.id.toString()),
      builder: (context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return _veranimales(snapshot.data);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _veranimales(List<Animal> animales) {
    return Container(
      child: GridView.builder(
        itemCount: animales.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      
          crossAxisCount: 2,
          //crossAxisSpacing: 10.0,
          //mainAxisSpacing: 10.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return FadeInImage(
            //height: _screenSize.height * 0.4,
            //width: _screenSize.width,
            image: NetworkImage(animales[index].getimga()),
            placeholder: AssetImage('assets/images/loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
