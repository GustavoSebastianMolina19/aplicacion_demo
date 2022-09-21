import 'dart:js';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondo(context),
          _formulario(context),
        ],
      ),
    );
  }
}

Widget _formulario(BuildContext context) {
  final sizeScreen = MediaQuery.of(context).size;

  return SingleChildScrollView(
    child: Column(
      children: [
        SafeArea(
          child: Container(
            height: 180.0,
          ),
        ),
        Container(
          width: sizeScreen.width * 0.80,
          margin: EdgeInsets.symmetric(vertical: 30.0),
          padding: EdgeInsets.symmetric(vertical: 60.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 5.0),
                  spreadRadius: 3.0,
                )
              ]),
          child: Column(
            children: [
              Text('Ingreso', style: TextStyle(fontSize: 20.0)),
              SizedBox(height: 10.0),
              _crearEmail(),
              _crearPassword(),
              const SizedBox(height: 20.0),
              _crearBoton(context),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _crearEmail() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        icon: Icon(
          Icons.email_outlined,
          color: Color.fromARGB(255, 245, 19, 19),
        ),
        hintText: 'Ejemplo@correo.com',
        labelText: 'Correo Electronico',
        //counterText: snap.data,
        //errorText: snap.error as String?,
      ),
    ),
  );
}

Widget _crearPassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: TextField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        icon: const Icon(
          Icons.lock,
          color: Color.fromARGB(255, 255, 24, 24),
        ),
        labelText: 'Contaseña',
        //counterText: snap.data,
        //errorText: snap.error as String?,
      ),
    ),
  );
}

Widget _crearBoton(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.pushReplacementNamed(context, 'home');
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
      child: Text(
        'Ingresar',
        style: TextStyle(color: Colors.black),
      ),
    ),
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      backgroundColor: Color.fromARGB(252, 224, 12, 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
}

_login(BuildContext context) {
  //Map info = await usuarioProvider.login(bloc.email, bloc.password);
  //if (info['ok']) {
  //Navigator.pushReplacementNamed(context, 'home');
  //} else {
  //mostrarAlerta(context, 'Contraseña y/o correos incorrectos');
  //}
}

Widget _fondo(BuildContext context) {
  final sizeScreen = MediaQuery.of(context).size;
  final fondo = Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30.0),
        bottomRight: Radius.circular(30.0),
      ),
      color: Color.fromARGB(252, 216, 0, 0),
    ),
    height: sizeScreen.height * 0.5,
    width: double.infinity,
  );

  final circulo = Container(
    height: 100.0,
    width: 100.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromARGB(109, 249, 152, 152)),
  );

  return Stack(
    children: [
      fondo,
      Positioned(
          child: circulo,
          top: sizeScreen.height * 0.3,
          left: sizeScreen.width * 0.9),
      Positioned(
          child: circulo,
          top: sizeScreen.height * -0.01,
          left: sizeScreen.height * -0.02),
      Positioned(
          child: circulo,
          top: sizeScreen.height * 0.3,
          left: sizeScreen.height * 0.2),
      Container(
        padding: EdgeInsets.only(top: sizeScreen.height * 0.3),
        child: Column(
          children: [
            //Container(height: 120,child:Image.asset("IMAGE..") ,)
          ],
        ),
      ),
    ],
  );
}
