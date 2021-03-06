import 'package:flutter/material.dart';
import 'package:yourlibrary/src/widgets/content/home_widget.dart';
import 'package:yourlibrary/src/widgets/content/libraries_widget.dart';
import 'package:yourlibrary/src/widgets/content/SearchBook_widget.dart';

class ItemMenu {
  String label;
  IconData icon;
  ItemMenu(this.icon, this.label);
  ItemMenu.create(this.icon, this.label);
}

List<ItemMenu> menuOptions = [
  ItemMenu(Icons.home, "Inicio"),
  ItemMenu.create(Icons.search, "Buscar"),
  ItemMenu.create(Icons.location_on, "Librerias"),
];

List<Widget> contentWidget = [
  HomeWidget(),
  SearchBooksWidget(),
  LibrariesWidget(),
];
