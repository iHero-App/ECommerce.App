import 'package:ecommerce/Shared/Resource/images_mangment.dart';

class Gategore_model {
  // String title;
  String title;
  String icon;

  Gategore_model({
    required this.title,
    required this.icon,
  });
}
List<Gategore_model> gategro_list = [
  Gategore_model(icon: BaseSvg.flashIcon , title: 'Flash Deal'),
  Gategore_model(icon: BaseSvg.billIcon , title: 'Bill'),
  Gategore_model(icon: BaseSvg.gameIcon , title: 'Game'),
  Gategore_model(icon: BaseSvg.giftIcon , title: 'Daily Gift'),
  Gategore_model(icon: BaseSvg.iconDiscover , title: 'More'),
];