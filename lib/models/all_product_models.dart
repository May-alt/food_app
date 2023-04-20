import 'package:flutter/material.dart';

class AllProductModles{
  String? name;
  String? prix;
  String? image;

  AllProductModles({
    required this.image,
    required this.prix,
    required this.name
});
}

List<AllProductModles> allProductModles = [
  AllProductModles(image: "assets/images/ph1.jpg", prix: "16.80 USD", name: "burgur Food"),
  AllProductModles(image: "assets/images/ph2.jpg", prix: "12.9 USD", name: "Chawarma"),
  AllProductModles(image: "assets/images/ph3.jpg", prix: "160 USD", name: "Salade chinoise"),
  AllProductModles(image: "assets/images/ph4.jpg", prix: "160 USD", name: "Salade chinoise facile"),
  AllProductModles(image: "assets/images/ph6.jpeg", prix: "18.4 USD", name: "Crispy fried chicken"),
];
