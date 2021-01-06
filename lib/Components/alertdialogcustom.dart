import 'package:flutter/material.dart';
import 'package:proj_btg/Controller/home_page_controller.dart';

class AlertDialogCustom extends StatelessWidget {
  const AlertDialogCustom({
    Key key,
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    
    HomePageController homeController = new HomePageController();

  
    return AlertDialog(
      
      title: Row(
        children: <Widget>[
          Icon(
            Icons.delete_forever,
            color: Colors.red,
          ),
          Text("Exclusão",
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
      content: Container(
        child: Text("Todo seu Storage sera apagado? deseja continuar"),
      ),
      actions: <Widget>[
        FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text("Cancelar")),
        FlatButton(
                focusColor: Colors.red,
                autofocus: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)),
                onPressed: () {
                  homeController.clearStorage();
                  Navigator.of(context).pop();
                },
                child: Text("Apagar", style: TextStyle(color: Colors.red),))
            
      ],
      elevation: 24,
    );
  }
}
