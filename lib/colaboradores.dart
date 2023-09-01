import 'package:flutter/material.dart';

class Pessoas extends StatefulWidget {
  const Pessoas({super.key});

  @override
  State<Pessoas> createState() => _PessoasState();
}

class _PessoasState extends State<Pessoas> {
  final listaPessoas = [
    {'nome': 'Juliana Albuquerque', 'funcao': 'Coordenadora de apoio', 'nmr': '(81) 99731-8333', 'email': 'julianaalbuquerque@email.com', 'img': '219969.png'},
    {'nome': 'Ângela Taís', 'funcao': 'Chefe de obras', 'nmr': '(81) 9762-9832', 'email': 'angelatais@email.com', 'img': '219969.png'},
    {'nome': 'Carlos Alexandre', 'funcao': 'Suporte', 'nmr': '(81) 9631-2343', 'email': 'carlosalexandre@email.com', 'img': '4128176.png'},
    {'nome': 'Ana Beatriz', 'funcao': 'Atendente', 'nmr': '(81) 99746-2398', 'email': 'anabeatriz@email.com', 'img': '219969.png'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Colaboradores',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(
              width: 2,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: listaPessoas.length,
                itemBuilder: (context, i) {
                  var dados = listaPessoas[i];
                  return Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/' + dados['img'].toString()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(dados['nome'].toString(),
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                )),
                                Text(dados['funcao'].toString(),
                                style: TextStyle(
                                  fontSize: 18
                                )),
                                Text(dados['nmr'].toString(),
                                style: TextStyle(
                                  fontSize: 18
                                )),
                                Text(dados['email'].toString(),
                                style: TextStyle(
                                  fontSize: 18
                                )
                              )
                            ],
                          )
                        ],
                      ),
                      Divider(color:  Color.fromARGB(255, 127, 127, 127),),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ) 
    );
  }
}