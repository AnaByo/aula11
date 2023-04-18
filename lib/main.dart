import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'App frases aleatórias',
    home: frases(),
  ));
}
class frases extends StatefulWidget{
  const frases({Key? key}) : super(key: key);
  @override
  State<frases> createState() => _frasesState();
}
class _frasesState extends State<frases>{
  var _frases = [
    'Você é apenas um idiota que nasceu com uma genética boa. - Naruto Uzumaki',
    'Viver é comer, dormir e arrumar brigas. - Natsu Dragneel, Fairy Tail',
    'Eu estou cansado de não fazer nada, mas eu sou muito preguiçoso pra fazer alguma coisa. - OreGairu',
    'Há três coisas que não posso tolerar: covardia, cortes de cabelo ruins e insurreição militar, e é muito lamentável que nosso amigo Vegeta possua todas essas três. - Freeza, Dragon Ball Z',
    'Você quer que eu diga a verdade ou continuamos amigos? - Dragon Ball Z',
    'Se eu pudesse vender meu tédio, tenho certeza de que ficaria rico. - Montaiji-Tachi Ga Isekai Kara Kuru Sou Desu Yo',
    'Eu vou ficar bem. Afinal, eu sou o mais forte que existe. - Gojo Satoru',
    'Quando eu não tinha nada nem ninguém, eu tinha a dor. - Pain'
    'Lar é onde tem alguém sempre pensando em você. - Naruto Uzumaki'
  ];
    var _frasesGerada = 'Gerador de frases abaixo!';
    void _gerarFrase(){
      var numeroSorteado = Random().nextInt(_frases.length);
      setState((){
        _frasesGerada = _frases[numeroSorteado];
   });
  }
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animecon'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('img/logo.png'
              ),
              Text(_frasesGerada,
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
                child: Text('New Phrase',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}