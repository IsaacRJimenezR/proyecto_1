import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text('Número de Clicks'), Text('$contador')],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        //Row es la fila
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Separar en espacios
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => _botonSuma(),
          ),
          Row(
            children: [
              FloatingActionButton(
                child: const Icon(Icons.remove),
                onPressed: () => _botonResta(),
              ),
              const SizedBox(
                //Espacio
                width: 10.0,
              ),
              FloatingActionButton(
                child: const Icon(Icons.refresh),
                onPressed: () => _botonRinicio(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _botonSuma() {
    setState(() => contador++);
  }

  _botonResta() {
    if (contador > 0) {
      setState(() => contador--);
    }
  }

  _botonRinicio() {
    setState(() => contador = 0);
  }
}
