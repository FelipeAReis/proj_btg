import 'package:flutter/material.dart';
import 'package:proj_btg/Controller/list_page_controller.dart';

import 'package:proj_btg/Model/moeda.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    ListPageController listController = new ListPageController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Listagem de Moedas"),
      ),
      body: SafeArea(
          child: Container(
              width: size.width,
              height: size.height,
              child: FutureBuilder(
                  future: listController
                      .getCurrency()
                      .catchError((onError) => print(onError)),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData) return Container();

                    print(snapshot);
                    List<Moeda> item = snapshot.data;

                    item.sort((a, b) => a.valor.compareTo(b.valor));

                    return (item != null)
                        ? ListView.separated(
                            itemBuilder: (context, index) {
                              return ListTile(
                                  title: Text(item[index].valor),
                                  subtitle: Text(item[index].sigla));
                            },
                            separatorBuilder: (context, index) => Divider(),
                            itemCount: item.length)
                        : Center(
                            child: CircularProgressIndicator(),
                          );
                  }))),
    );
  }
}
