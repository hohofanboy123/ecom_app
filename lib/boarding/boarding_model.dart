class BoardingModel{

  final String? title;
  final String? image;
  final String? body;
  BoardingModel({this.title, this.image, this.body});
  
}

List<BoardingModel> boardingModelList = [

  BoardingModel(
    title: "SPLASH ONE",
    image: "assets/images/splash_1.png",
    body: "SPLASH ONE BODY",
  ),

  BoardingModel(
    title: "SPLASH TWO",
    image: "assets/images/splash_2.png",
    body: "SPLASH TWO BODY",
  ),

  BoardingModel(
    title: "SPLASH THREE",
    image: "assets/images/splash_3.png",
    body: "SPLASH THREE BODY",
  ),
];