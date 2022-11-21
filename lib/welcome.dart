import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica/display.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({super.key, required this.nombre});

  final String nombre;

  @override
  State<welcomePage> createState() => welcomeState();
}


class welcomeState extends State<welcomePage> {

  final _formKey = GlobalKey<FormState>();

  double intensidad = 100;

  Color? colorReciente = Colors.blue[100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 100,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 32),
                          child: Icon(Icons.person, size: 42,),
                        ),
                        Text(widget.nombre,)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(value: Colors.red[intensidad.toInt()], groupValue: colorReciente , onChanged: (value) {

                            setState(() {
                              colorReciente = value!;
                            });

                          }),
                          Text("Rojo", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Radio(value: Colors.blue[intensidad.toInt()], groupValue: colorReciente, onChanged: (value) {
                              setState(() {
                                colorReciente = value!;
                              });

                            }),
                          Text("Azul", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Slider(min: 0, max: 100,value: intensidad, divisions: 5, label: intensidad.round().toString(), onChanged: (double value) {
                        setState(() {
                          intensidad = value;
                        });
                      },),
                      SizedBox(
                          height: 40,
                          width: 280,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => displayPage(colorReciente!)));
                              }, child: Text("Entrar", style: TextStyle(color: Colors.black),)))
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }


}