import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:proj_btg/Components/alertdialogcustom.dart';
import 'package:proj_btg/Model/history.dart';
import 'package:intl/intl.dart';
import 'package:proj_btg/Controller/home_page_controller.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    HomePageController homeController = new HomePageController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Histórico"),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialogCustom(),
                          );
                        },
                        child: Icon(Icons.delete_forever),
                      )),
                  Icon(Icons.search),
                ],
              ))
        ],
      ),
      body: SafeArea(
          child: Container(
              width: size.width,
              height: size.height,
              child: FutureBuilder(
                  future: homeController.recoverList().catchError((onError) => print(onError)),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData) return Container();

                    List<HistoricoItem> item = snapshot.data;

                    item.sort((a, b) => b.date.compareTo(a.date));

                    return (item != null)
                        ? Observer(
                            builder: (_) => ListView.separated(
                                itemBuilder: (context, index) {
                                  return ListTile(
                                      title: Column(
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text("Moeda: " +
                                                  item[index].moedaOrigem),
                                              Icon(Icons.compare_arrows),
                                              Text("Moeda: " +
                                                  item[index].moedaDestino),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text("\$ " +
                                                  item[index]
                                                      .valorInicial
                                                      .toStringAsFixed(2)),
                                              Text("\$ " +
                                                  item[index]
                                                      .valorFinal
                                                      .toStringAsFixed(2)),
                                            ],
                                          )
                                        ],
                                      ),
                                      subtitle: Center(
                                          child: Text(
                                        DateFormat("dd/MM/yyyy H:m:s").format(
                                            DateTime.parse(item[index].date)),
                                      )));
                                },
                                separatorBuilder: (context, index) => Divider(),
                                itemCount: item.length))
                        : Center(
                            child: CircularProgressIndicator(),
                          );
                  }))),
    );
  }
}
