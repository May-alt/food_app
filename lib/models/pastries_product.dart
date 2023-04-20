import 'package:flutter/material.dart';

class PastriesProductModles{
  String? name;
  String? prix;
  String? image;

  PastriesProductModles({
    required this.image,
    required this.prix,
    required this.name
});
}

List<PastriesProductModles> pastriesProductModles = [
  PastriesProductModles(image: "assets/images/ph1.jpg", prix: "16.80 USD", name: "burgur Food"),
  PastriesProductModles(image: "assets/images/ph2.jpg", prix: "12.9 USD", name: "Chawarma"),
  PastriesProductModles(image: "assets/images/ph3.jpg", prix: "160 USD", name: "Salade chinoise"),
  PastriesProductModles(image: "assets/images/ph4.jpg", prix: "160 USD", name: "Salade chinoise facile"),
  PastriesProductModles(image: "assets/images/ph6.jpeg", prix: "18.4 USD", name: "Crispy fried chicken"),
];
