import 'package:flutter/material.dart';

class ProdutoPage extends StatefulWidget {
  final String tag;

  const ProdutoPage({Key key, this.tag}) : super(key: key);

  @override
  _ProdutoPageState createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: widget.tag,
        child: Image.network(
            "https://lojamultilaser.vteximg.com.br/arquivos/ids/180807-430-430/HO023_01.png?v=636694108498870000"),
      ),
    );
  }
}
