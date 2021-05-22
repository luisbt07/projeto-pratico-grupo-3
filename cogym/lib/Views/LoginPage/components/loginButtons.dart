import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginButtons extends StatefulWidget{
  final String _email;
  final String _password;

  @override
  _LoginButtonsState createState() => _LoginButtonsState();
  LoginButtons(this._email, this._password);
}

class _LoginButtonsState extends State<LoginButtons>{
  // Console()
  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    return  Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [ GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'telaRegistrar');
              },
              child: new Text(
                "Esqueci minha senha",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Bebas Neue',
                  fontSize: 15
                  ),
                ),
              ),]
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent),
                foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(39, 39, 39, 50)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Bebas Neue',
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              onPressed: (){
                auth.signInWithEmailAndPassword(email: widget._email, password: widget._password);
                Navigator.popAndPushNamed(context,'telaPrincipal');
                // Navigator.pushNamed(context, "telaPrincipal")
              }


            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'telaRegistrar');
            },
            child: new Text(
              "Cadastrar",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Bebas Neue',
                fontSize: 20
              ),
            ),
          ),
      ]
    );
  }
}