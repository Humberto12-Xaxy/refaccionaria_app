import 'package:get/get.dart';
import 'package:refaccionaria/bindings/home_binding.dart';
import 'package:refaccionaria/views/home_page.dart';
import 'package:refaccionaria/views/menu_page.dart';
import 'package:refaccionaria/views/product_page.dart';

class RoutesClass {
  static String home = '/';
  static String menuProductsForCategory = '/menuProducts';
  static String product = '/product';

  static String getHomeRoute() => home;
  static String getMenuProducsForCategory() => menuProductsForCategory;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => HomePage(), binding: HomeBimding()),
    GetPage(
      name: menuProductsForCategory,
      page: () => const MenuPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: product,
      page: () => const ProductPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    )
  ];
}
