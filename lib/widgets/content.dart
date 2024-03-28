

class UnboardingContent {
  String? image;
  String? title;
  String? description;
  UnboardingContent(
      {required this.image, required this.title, required this.description});


}

  List<UnboardingContent> contents = [
  UnboardingContent(
      image: 'images/screen1.png',
      title: 'Select from Our\n     Best Menu',
      description: "Pick our food from our menu\n        More than 35 times"),
  UnboardingContent(
      image: 'images/screen2.png',
      title: 'Easy and online payment',
      description:
          "You can pay cash on delivery and\n        Card payment available"),
  UnboardingContent(
      image: 'images/screen3.png',
      title: 'Quick delivery at\n    Your Doorstep',
      description: "Deliver food at your\n          Doorstep")
];


