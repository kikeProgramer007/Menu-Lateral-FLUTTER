import 'package:flutter/material.dart';
import 'package:menu_lateral/navigation_drawer.dart';

void main() {
  runApp(const MaterialApp(
    home:  Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),//BOTON ND
      appBar: AppBar(
      title: const Text('Navigation Drawer'),
      centerTitle: true,
      backgroundColor: Colors.black,

      ),
      body: Builder(
        builder: (context) {
          return Center(
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width - 100,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.open_in_new, color: Colors.white,),
                label: const Text('Open Navigation Drawer', style: TextStyle(color: Colors.white),),
              ),
            ),
          );
        }
      ),
     
    );
  }
}
