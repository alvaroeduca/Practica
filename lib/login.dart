import 'package:flutter/material.dart';
import 'package:practica/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _main();
}

class _main extends State<MyHomePage> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    TextEditingController name = new TextEditingController();

    return Scaffold(
      body: Center(
        key: _formKey,
        child: SizedBox(
          width: 300,
          child: Form(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: SizedBox(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        controller: name,
                        decoration: const InputDecoration(
                        labelText: "Nombre de usuario",
                        border:  OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3, color: Colors.grey
                          )
                        )
                      ),
                      ),
                      TextFormField(decoration: const InputDecoration(
                          labelText: "Contraseña",
                          border:  OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3, color: Colors.grey
                              )
                          )
                      ),
                      ),
                      SizedBox(
                        height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                              onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => welcomePage(nombre: name.text,)));
                          }, child: Text("Entrar", style: TextStyle(color: Colors.black),)))
                    ],
                  ),
                ),
              ),
            ],
           ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
