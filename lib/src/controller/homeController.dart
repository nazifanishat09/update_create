import 'dart:ui';

import 'package:get/state_manager.dart';
import 'package:update_create/src/model/product_model.dart';

class HomeController extends GetxController {
  List i = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpN0y6TO_gBpe4Ii77uqF-zEPclxUwaphix8gyA8fYXQ&s=10',

    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-QhPa3fixfvhUvgHMpiy9x1Jy0dO2dG2N4v8MfHqyFQ&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL6rN9hYxDi9DRF1HRL8FfRlzzQLBAb-5YUvfovT1DBg&s=10',

    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFUc4dO3qHSqbMp6RWbqv3TLAqXBtLl59L9RV0Y4ennQ&s=10',
  ].obs;

  List<Map<String, dynamic>> n = [
    {
      'name': 'Beauty',

      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4ZR_I8rqtap-0wY3Arsbspzl74d8KAd5BLQWZ3H6xLw&s=10',
    },

    {
      'name': 'Shoes',

      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnBLHDYa-urNrcEeAu4Qt7FYL_YsQAVl8ilfIFffys1Q&s=10',
    },

    {
      'name': "Jewelry",
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDTvgEtiPzobG6YpqiMAEr0oRXe1IEfs2qxiJJ6DQeEg&s=10',
    },

    {
      'name': '''Woman's Fashion''',
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVEjO2EJoJSSzPAdoTjiuHPpl9Pns5CEgAgcmj-yjBIQ&s=10',
    },

    {
      'name': "Men's Fashion",
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJbZ-2zProLLNQiS6d7ZEHtbGtUZfCa2nn_qZf0Yci8g&s=10',
    },

    {
      'name': "Dress",
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE4uwkUEUCOwl1SFesepr_7HUsTJi3a-IG-WShjwWAYQ&s=10',
    },
  ].obs;

  RxList itemColor = [
    (color: Color(0xff5C2AA3)),
    (color: Color(0xffF54927)),
    (color: Color(0xff2EA32A)),
    (color: Color(0xff5E2A0B)),
    (color: Color(0xff6E1636)),
  ].obs;
  RxInt selectedColorIndex = 0.obs;

  RxList<ProductModel> productList = <ProductModel>[].obs;

  @override
  void onInit() {
    loadProduct();
    super.onInit();
  }

  void loadProduct() {
    productList.value = [
      ProductModel(
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1iAXQjLWdbHRwjFJXQrZtABQY-Z5GqqFcLY6JIb1ivw&s=10',
        name: "Woman sweater",
        prise: 1200.00,
        id: 1,
      ),

      ProductModel(
        img: 'https://m.media-amazon.com/images/I/717CyBc08DL._AC_UF1000,1000_QL80_.jpg',
        name: "Wireless Sports In-Ear Earbuds",
        prise: 200.00,
        id: 2,
      ),

      ProductModel(
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcLoAGfSRIG3K2f4sdVK_tQKrsT36_C5v0ZmWJI1RGcA&s=10',
        name: "Men's shoes",
        prise: 2673.00,
        id: 3,
      ),

      ProductModel(
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6wmSOIeqfOd27jh_l2pEO6RCItEOAhBJVfqja34Fv4Q&s=10',
        name: "Perfume",
        prise: 1500.00,
        id: 4,
      ),

      ProductModel(
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpyq9fGVbRzeu8g3k727-TdTX0bfZIQRNqfQOqSvo2dA&s=10',
        name: "Formal Shirt",
        prise: 285.00,
        id: 5,
      ),

      ProductModel(
        img: 'https://img.drz.lazcdn.com/static/bd/p/0bf9cbe2355db01330f10139d8455e3e.jpg_720x720q80.jpg',
        name: "Casual Wrist Watch",
        prise: 1800.00,
        id: 6,
      ),

      ProductModel(
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVqKQVvPQgVxeXiWx-N8mCueLdnN0m1LbooY2yQd6kCQ&s=10',
        name: "VIVO V80 lite",
        prise: 59999.00,
        id: 7,
      ),

      ProductModel(
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFPeyuepPcn8ZHMWUcdihurQYqw2YbyeBayfV3FRc6Sg&s=10',
        name: "HP",
        prise: 70000.00,
        id: 8,
      ),

      ProductModel(
        img: 'https://orenmart.sgp1.digitaloceanspaces.com/product/cf46d4a9-495a-47c8-b723-10509a26cd51.jpg',
        name: "Leather Key Ring",
        prise: 350.00,
        id: 9,
      ),

      ProductModel(
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaKntBgDFU1g6uHKVcCG3V1AnWTf-8e8QoMCfNb3hBbudtYG3MUGup0SoJ&s=10',
        name: "HiFi Music Headphones",
        prise: 2300,
        id: 10,
      ),

      ProductModel(
        img: 'https://img.drz.lazcdn.com/static/bd/p/cd6c4fc17fa31601620a7e1357a6cb53.png_720x720q80.png',
        name: "USB 3.0 4 Ports OTG Hub",
        prise: 1300.00,
        id: 11,
      ),
      ProductModel(
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1BYu4XMGLi00tHDTql2dTv2DZHi6dbAhkdlQYriONyfU3d8Cc2NlwOOgc&s=10',
        name: "Diamond drop earring",
        prise: 9200.00,
        id: 12,
      ),
    ];
  }

  //wishlist

  RxBool isSelect = false.obs;

  void select() {
    isSelect.value = !isSelect.value;
  }
}
