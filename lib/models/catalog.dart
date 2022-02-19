class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  Item(
id: "codepur001",
name:"IPhone 6",
desc:"Apple 6th generation",
price: 999,
color: "yellloe",
image: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fsupport.apple.com%2Flibrary%2FAPPLE%2FAPPLECARE_ALLGEOS%2FSP705%2FSP705-iphone_6-mul.png&imgrefurl=https%3A%2F%2Fsupport.apple.com%2Fkb%2Fsp705&tbnid=My51jWAe06D0HM&vet=12ahUKEwjEuLK35Yv2AhWEk_0HHRudDq8QMygAegUIARDeAQ..i&docid=o8eNkc_SobFBNM&w=720&h=614&q=iphone%206%20images&ved=2ahUKEwjEuLK35Yv2AhWEk_0HHRudDq8QMygAegUIARDeAQ",

)];
