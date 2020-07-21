
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final estiloSubtitulo = TextStyle( fontSize: 18.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          
            _crearImg(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),

          ],
        ),
      ),
    );
  }

  Widget _crearImg() {

    return Container(
      width: double.infinity,
      child: Image(
        fit: BoxFit.cover,
        image: NetworkImage('https://i.vimeocdn.com/video/703876203_640.jpg')
      ),
    );

  }

  Widget _crearTitulo() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 30.0, vertical: 20.0 ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text( 'Lago con un bosque', style: estiloTitulo ),
                  SizedBox( height: 7.0 ),
                  Text( 'Un bosque psicodélico con un lago', style: estiloSubtitulo ),
                ],
              ),
            ),
            Icon( Icons.star, color:Colors.red, size: 30.0 ),
            Text( '41', style: TextStyle( fontSize: 20.0 ) )
          ],
        ),
      ),
    );

  }

  Widget _crearAcciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion( Icons.call, 'CALL' ),
        _accion( Icons.near_me, 'ROUTE' ),
        _accion( Icons.share, 'SHARE'),
      ],
    );
  }


  Widget _accion( IconData icon, String texto ) {

    return Column(
      children: <Widget>[
        Icon( icon, color: Colors.blue, size: 40.0 ),
        SizedBox( height: 5.0 ),
        Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.blue ) )
      ],
    );

  }

  Widget _crearTexto() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0 ),
        child: Text(
          'Sunt culpa velit nostrud sint. Labore aliquip sint excepteur nulla voluptate ex incididunt. Duis labore consectetur dolor fugiat aliquip veniam fugiat cillum elit qui. Voluptate pariatur enim cillum quis esse irure eiusmod reprehenderit Lorem adipisicing.',
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }

}