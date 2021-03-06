import 'package:flutter/material.dart';
import 'package:yourlibrary/src/pages/main_page.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final circle = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Theme.of(context).disabledColor.withAlpha(30)),
    );

    final circle_2 = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Theme.of(context).backgroundColor.withAlpha(25)),
    );

    return Stack(
      children: [
        Container(
          height: size.height * 0.4,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColorDark,
          ])),
        ),
        Positioned(top: 90.0, left: 30.0, child: circle),
        Positioned(top: -40.0, left: -30.0, child: circle),
        Positioned(top: 100.0, right: 150.0, child: circle),
        Positioned(bottom: -50.0, right: -10.0, child: circle_2),
        Positioned(bottom: 120.0, right: 20.0, child: circle_2),
        Positioned(bottom: -50.0, left: -20.0, child: circle_2)
      ],
    );
  }
}

class Standard {
  static AppBar appBar(BuildContext context, String title) {
    return AppBar(
      title: Text(title),
    );
  }

  //Barra superio con el Icono de Close
  static AppBar appBar2(BuildContext context, String title) {
    return AppBar(
      title: Text(title),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              });
        },
      ),
    );
  }

  //Barra superio con el Icono de Close y Flecha de regresar
  static AppBar appBar3(BuildContext context, String title) {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MainPage(titulo: "Your Library"))),
          icon: Icon(Icons.close),
        )
      ],
    );
  }

  static Widget tittleToForm(BuildContext context, String title) {
    Color _color = Colors.white;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 14.0),
      child: Text(title,
          style: Theme.of(context).textTheme.headline6!.apply(color: _color)),
    );
  }

  static ButtonStyle buttonStandardStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
        elevation: 5.0,
        primary: Theme.of(context).accentColor,
        shadowColor: Theme.of(context).accentColor,
        shape: CircleBorder(),
        padding: EdgeInsets.all(20));
  }
}
