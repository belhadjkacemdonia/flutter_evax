import 'package:flutter/material.dart';

import 'CustomListTile.dart';
import 'acceuil.dart';
import 'espace_citoyen.dart';
import 'contact.dart';
import 'inscrir.dart';
import 'inscrit_pharmacie.dart';

void main() {
  runApp(MaterialApp(
    title: 'evax',
    home: MyApp(),   //awel page bch nraniha
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('EVAX'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/back2.jpeg"),
              fit: BoxFit.cover),
        ),
    ),


      drawer: Drawer(    //menu
        child: ListView(
          children: <Widget>[
            DrawerHeader(        //partie photo
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Colors.red,
                      Colors.red,
                    ])
                ),
                child: Container(
                  child: Column(
                    children:<Widget> [
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        child: Padding(padding: EdgeInsets.all(10.0),
                          child: Image.asset('images/ministere1.png',width: 80,height: 80,),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(7.0),child: Text('EVAX',style: TextStyle(color: Colors.white,fontSize: 20.0) ,),)
                    ],
                  ),
                )),
            CustomListTile(Icons.home,'Acceuil',()=> {Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp()
            ))
            }),
            CustomListTile(Icons.login,'S"inscrire',()=>{ Navigator.push(context, MaterialPageRoute(builder: (context)=> inscrir()
            ))}),
            CustomListTile(Icons.tty,'Contacter nous',()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=> contact()
            ))}),
            CustomListTile(Icons.local_pharmacy,'Inscription pharmacie',()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=> inscrit_pharmacie()
            ))}),
            CustomListTile(Icons.person,'Espace Citoyen',()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=> citoyen()
            ))}),
          ],
        ),
      ),
    );
  }

}
