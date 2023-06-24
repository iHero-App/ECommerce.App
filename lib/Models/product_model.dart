import 'package:ecommerce/Shared/Resource/images_mangment.dart';

class Products_model {
  String title;
  String image;
  double price;
  bool Like;

  Products_model({
    required this.title,
    required this.image,
    required this.price,
    required this.Like,
  });
}
List<Products_model> Products_list = [
  Products_model(title: 'Wireless Controller for PS4', image: BaseImage.ImagePopularProduct1, price: 64.88, Like: true),
  Products_model(title: 'Nike Sport White - Man Pant', image: BaseImage.ImagePopularProduct2, price: 50.5, Like: false),
  Products_model(title: 'Bell RED MD Bicycle Helmets', image: BaseImage.ImagePopularProduct3, price: 36.5, Like: true),
  Products_model(title: 'Logitech Zone Wireless Plus Headset Direct', image: BaseImage.wirelessheadset, price: 40.2, Like: false),
  Products_model(title: 'Tshirt Orange', image: BaseImage.tshirt, price: 36.6, Like: true)
];