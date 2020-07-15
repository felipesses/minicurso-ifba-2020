import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  @override
  _CalculadoraPageState createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  int num1 = 0;
  int num2 = 0;
  int resultado = 0;

  void somar(int primeiroNumero, int segundoNumero) {
    setState(() {
      resultado = primeiroNumero + segundoNumero;
    });
  }

  void subtrair(int primeiroNumero, int segundoNumero) {
    setState(() {
      resultado = primeiroNumero - segundoNumero;
    });
  }

  void multiplicar(int primeiroNumero, int segundoNumero) {
    setState(() {
      resultado = primeiroNumero * segundoNumero;
    });
  }

  void dividir(int primeiroNumero, int segundoNumero) {
    setState(() {
      resultado = primeiroNumero ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Resultado: $resultado",
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "0",
              ),
              onChanged: (text) {
                num1 = int.parse(text);
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "0",
              ),
              onChanged: (text) {
                num2 = int.parse(text);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    somar(num1, num2);
                  },
                  color: Colors.greenAccent,
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    subtrair(num1, num2);
                  },
                  color: Colors.blue,
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    multiplicar(num1, num2);
                  },
                  color: Colors.red,
                  child: Text(
                    "*",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    dividir(num1, num2);
                  },
                  color: Colors.yellow,
                  child: Text(
                    "/",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
