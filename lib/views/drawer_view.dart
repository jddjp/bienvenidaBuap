import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  static const routeName = 'drawer';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.only(top: 45),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Marca.png'),
                        fit: BoxFit.contain)),
              ),
            ),
            (ListTile(
              title: Text(
                "Iniciar sesión",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.account_circle_outlined, color: Colors.white),
              onTap: () {},
            )),
            ListTile(
              title: Text(
                "Direcciones",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.place,
                color: Colors.white,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Soporte',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.help_outline, color: Colors.white),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Acerca de',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.info_outline, color: Colors.white),
              //launchScreen(context, AboutPage.routeName),
              onTap: () => Navigator.pushNamed(context, 'about'),
            ),
            (ListTile(
              title: Text(
                'Cerrar sesión',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.subdirectory_arrow_left_rounded,
                  color: Colors.red),
              onTap: () {
                //launchScreen(context, LoginView.routeName);
              },
            ))
          ],
        ),
      ),
    );
  }
}
