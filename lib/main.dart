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
      body: Center(
        child: Container(
          padding:  EdgeInsets.all(8.0),
          constraints: BoxConstraints.expand(),
          decoration:  BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/back2.jpeg"),
                fit: BoxFit.cover),
          ),
          child:  Column(
            children: [
              Text(
                'BIENVENUE AU PORTAIL DE VACCINATION CONTRE LA COVID 19',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red,fontSize: 20.0),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> inscrir()
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                  ),

                  margin: EdgeInsets.only(bottom: 15, top: 25),
                  width: 350.0,
                  height: 50.0,
                  child: Center(
                    child: Text(
                      'Inscrivez-vous à la campagne de vaccination',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

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
