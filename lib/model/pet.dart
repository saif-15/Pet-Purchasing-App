import 'dart:ui';
import 'package:pet_purchasing_app/colors.dart';

class Pet {
  final String imageAsset;
  final String title;
  final String description;
  final Color color;
  Pet({this.title, this.description, this.imageAsset, this.color});
}

final List listOfCats = [
  Pet(
      color: lightBrown,
      title: "Persian Cat",
      description:
          "The Persian cat is a long-haired breed of cat characterized by its round face and short muzzle. It is also known as the Persian Longhair in the English-speaking countries. The first documented ancestors of the Persian were imported into Italy from Iran around 1620",
      imageAsset: "assets/cats/cat1.png"),
  Pet(
      color: lightGray,
      title: "Ragdoll Cat",
      description:
          "Ragdoll cat is a cat breed with blue eyes and a distinct colorpoint coat. "
          "It is a large and muscular semi-longhair cat with a soft and silky coat. "
          "It is best known for its docile and placid temperament and affectionate nature."
          " The name Ragdoll is derived from the tendency of individuals from the original breeding stock"
          " to go limp and relaxed when picked up.",
      imageAsset: "assets/cats/cat2.png"),
  Pet(
      color: lightGray,
      title: "Singapura Cats",
      imageAsset: "assets/cats/cat3.png",
      description: "The Singapura is one of the smallest breeds of cats,"
          " noted for its large eyes and ears, brown ticked coat, and blunt tail. Reportedly established "
          "from three drain cats imported from Singapore in the 1970s, it was later revealed that the cats were"
          " originally sent to Singapore from the US before they were exported back to the US. "
          "Investigations by the Cat Fanciers' Association (CFA) concluded no wrongdoing and the Singapura kept its status as a natural breed."),
  Pet(
      color: lightBrown,
      title: "Savannah Cat",
      imageAsset: "assets/cats/cat4.png",
      description:
          "A Savannah cat is a cross between a domestic cat and a serval, a medium-sized, large-eared wild African cat. The unusual cross became popular among breeders at the end of the 1990s, and in 2001 The International Cat Association (TICA) accepted it as a new registered breed."),
  Pet(
      color: darkBrown,
      title: "Bengal cat",
      imageAsset: "assets/cats/cat5.png",
      description:
          "The Bengal cat is a domesticated cat breed created from hybrids of domestic cats, especially the spotted Egyptian Mau, with the Asian leopard cat. The breed name comes from the leopard cat's taxonomic name.")
];

class PetType {
  final String asset;
  final String title;

  PetType({this.asset, this.title});
}

final List petTypes = [
  PetType(title: "Cats", asset: "assets/cats/cat2.png"),
  PetType(title: "Dogs", asset: "assets/dogs/dog3.png"),
  PetType(title: "Parrots", asset: "assets/parrots/parrot2.png"),
];
