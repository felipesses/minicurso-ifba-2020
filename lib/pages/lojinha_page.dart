import 'package:flutter/material.dart';
import 'package:primeiro_app/pages/produto_page.dart';

class LojinhaPage extends StatefulWidget {
  @override
  _LojinhaPageState createState() => _LojinhaPageState();
}

class _LojinhaPageState extends State<LojinhaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Lojinha"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          Hero(
            tag: "imagem",
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return ProdutoPage(
                    tag: "imagem",
                  );
                }));
              },
              title: Text("Testando"),
              leading: Image.network(
                  "https://lojamultilaser.vteximg.com.br/arquivos/ids/180807-430-430/HO023_01.png?v=636694108498870000"),
              trailing: IconButton(
                icon: Icon(Icons.shopping_basket),
                color: Colors.yellow,
                onPressed: () {},
              ),
            ),
          ),

          // ListTile(
          //   title: Text("Testando"),
          //   leading: CircleAvatar(
          //     backgroundColor: Colors.blue,
          //   ),
          //   trailing: IconButton(
          //     icon: Icon(Icons.shopping_basket),
          //     color: Colors.yellow,
          //     onPressed: () {},
          //   ),
          // ),
          // ListTile(
          //   title: Text("Testando"),
          //   leading: CircleAvatar(
          //     backgroundColor: Colors.blue,
          //   ),
          //   trailing: IconButton(
          //     icon: Icon(Icons.shopping_basket),
          //     color: Colors.yellow,
          //     onPressed: () {},
          //   ),
          // ),
          // ListTile(
          //   title: Text("Testando"),
          //   leading: CircleAvatar(
          //     backgroundColor: Colors.blue,
          //   ),
          //   trailing: IconButton(
          //     icon: Icon(Icons.shopping_basket),
          //     color: Colors.yellow,
          //     onPressed: () {},
          //   ),
          // ),
          // ListTile(
          //   title: Text("Testando"),
          //   leading: CircleAvatar(
          //     backgroundColor: Colors.blue,
          //   ),
          //   trailing: IconButton(
          //     icon: Icon(Icons.shopping_basket),
          //     color: Colors.yellow,
          //     onPressed: () {},
          //   ),
          // ),
        ],
      ),
    );
  }
}
