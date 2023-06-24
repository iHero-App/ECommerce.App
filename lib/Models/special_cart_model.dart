import 'package:ecommerce/Shared/Resource/images_mangment.dart';

class Special_Cart_model {
  // String title;
  String title;
  int QBrands;
  String image;

  Special_Cart_model({
    required this.title,
    required this.image,
    required this.QBrands,
  });
}
List<Special_Cart_model> special_cart_list = [
  Special_Cart_model(image: BaseImage.imageBanner2 , title: 'Smartphone' , QBrands: 18) ,
  Special_Cart_model(image: BaseImage.imageBanner3 , title: 'Fashion' , QBrands: 24) ,
];