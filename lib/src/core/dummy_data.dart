import 'package:flutter/material.dart';
import 'package:flutter_ui/src/ui2/widgets/onboardingSlider.dart';

class DummyData {
  static const List<String> catList = [
    "Popular",
    "Featured",
    "Most Visited",
    "Europe",
    "Asia",
    "Africia"
  ];
  static List<Map<String, dynamic>> catItemList = [
    {
      'image': 'assets/ui1/1.jpg',
      'title': 'North Mountain',
      'isFav': true,
      'rating': 2.0,
      'price': 130,
      'location': 'Laborte, Argentina',
    },
    {
      'image': 'assets/ui1/2.jpg',
      'title': 'Mount Fuji',
      'isFav': false,
      'rating': 5.0,
      'price': 300,
      'location': 'Cairo, Egypt',
    },
    {
      'image': 'assets/ui1/3.jpg',
      'title': 'Everst Mountain',
      'isFav': false,
      'rating': 3.5,
      'price': 700,
      'location': 'Branzino, Italy',
    },
    {
      'image': 'assets/ui1/1.jpg',
      'title': 'The Great Mountaine',
      'isFav': true,
      'rating': 4.0,
      'price': 350,
      'location': 'Ladame, China',
    },
    {
      'image': 'assets/ui1/2.jpg',
      'title': 'Koko Wawa Mountain',
      'isFav': true,
      'rating': 5.0,
      'price': 290,
      'location': 'Calefornia, USA',
    },
    {
      'image': 'assets/ui1/3.jpg',
      'title': 'Greenwood Mountain',
      'isFav': false,
      'rating': 1.0,
      'price': 302,
      'location': 'Alavis, Brazil',
    },
  ];
  static final List<Widget> pages = [
    OnboardingSlider(
      title: "Welcome",
      description:
          "Lorem Ipsum is simply dummy\ntext Ipsum is simply dummy text\ntext Ipsum is simply dummy text",
      image: "assets/ui2/2.png",
    ),
    OnboardingSlider(
      title: "Join",
      description:
          "Lorem Ipsum is simply dummy\ntext Ipsum is simply dummy text\ntext Ipsum is simply dummy text",
      image: "assets/ui2/3.png",
    ),
    OnboardingSlider(
      title: "Get Help",
      description:
          "Lorem Ipsum is simply dummy\ntext Ipsum is simply dummy text\ntext Ipsum is simply dummy text",
      image: "assets/ui2/4.png",
    ),
    OnboardingSlider(
      title: "Enjoy",
      description:
          "Lorem Ipsum is simply dummy\ntext Ipsum is simply dummy text\ntext Ipsum is simply dummy text",
      image: "assets/ui2/5.png",
    ),
  ];
  static const String description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.";
}
