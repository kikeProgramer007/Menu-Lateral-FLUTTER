import 'package:flutter/material.dart';
import 'package:menu_lateral/Account.dart';
import 'package:menu_lateral/chat.dart';
import 'package:menu_lateral/drawer_item.dart';
import 'package:menu_lateral/people.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child:  Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(height: 40,),
              const Divider(thickness: 1, height: 10, color: Colors.grey,),
              const SizedBox(height: 40,),

              DrawerItem(
                name: 'People',
                icon: Icons.people,
                onPressed: ()=> onItemPressed(context, index: 0),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                name: 'My Account',
                icon: Icons.account_box_rounded,
                onPressed: ()=> onItemPressed(context, index: 1),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                name: 'Chats',
                icon: Icons.messenger_outlined,
                onPressed: ()=> onItemPressed(context, index: 2),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                name: 'Favorites',
                icon: Icons.favorite_border_outlined,
                onPressed: ()=> onItemPressed(context, index: 3),
              ),
              const SizedBox(height: 30,),
              const Divider(thickness: 1, height: 10, color: Colors.grey,),
              const SizedBox(height: 30,),
              DrawerItem(
                name: 'Setting',
                icon: Icons.settings,
                onPressed: ()=> onItemPressed(context, index: 4),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                name: 'Log out',
                icon: Icons.logout,
                onPressed: ()=> onItemPressed(context, index: 5),
              )
            ],
          ),
        ),
      ),
     
    );
  }

  //PROCEDIMIENTO PARA CADA MODULO
  void onItemPressed(BuildContext context, {required int index}){
    Navigator.pop(context);
    switch(index){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const People()));
        break;
      case 1:
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Account()));
        break;
      case 2:
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Chat()));
        break;
      // default: 
      //   Navigator.pop(context);
      //   break;
    }
  }

  Widget headerWidget(){
    // const url = 'https://img3.schoolandcollegelistings.com/852/723/4715204078527237.jpg';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          // backgroundImage: NetworkImage(url),
          backgroundImage:  AssetImage('assets/images/logocolegio.PNG'),
        ),

        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
            Text('Person name', style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(height: 10,),
            Text('Person@gmail.com', style: TextStyle(fontSize: 14, color: Colors.white)),
          ],
        )

      ],
    );
  }

}