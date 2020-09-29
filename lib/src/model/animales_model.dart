class Cast {

  List<Animal> animales = new List();


  Cast.fromJsonList( List<dynamic> jsonList  ){

    if ( jsonList == null ) return;

    jsonList.forEach( (item) {
      final animal = Animal.fromJsonMap(item);
      animales.add(animal);
    });
  }

}




class Animal {
  int id;
  String ncomun;
  String urlimagen;
  String especie;

  Animal({
    this.id,
    this.ncomun,
    this.urlimagen,
    this.especie,
  }
  );


  Animal.fromJsonMap( Map<String, dynamic> json ) {

    id      = json['id'];
    ncomun   = json['n_comun'];
    urlimagen    = json['url_imagen'];
    especie    = json['especie'];
   

  }

   getimga() {
      return 'http://192.168.1.8:8000$urlimagen';
  }

}
