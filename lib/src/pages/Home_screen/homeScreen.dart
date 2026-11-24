import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:update_create/src/controller/homeController.dart';
import 'package:update_create/src/pages/Home_screen/Product_details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.tune),
              filled: true,
              fillColor: Colors.grey[350],
              hintText: 'search...',
      
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
      
                borderSide: BorderSide.none,
              ),
            ),
          ),
      
          SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(
              height: 190,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 2),
            ),
            items: homeController.i.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(i),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: 20),
      
          SizedBox(
            height: 130,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: homeController.n.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (c, v) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            homeController.n[v]['img'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
      
                      Text(homeController.n[v]['name']),
                    ],
                  ),
                );
              },
            ),
          ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Special For You",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            itemCount: homeController.productList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (c, i) {
              final product = homeController.productList[i];
      
              return Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(ProductDetailsScreen(productDetails: product));
                    },
                    child: Container(
                      height: 300,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image.network(
                              product.img,
                              fit: BoxFit.cover,
                              height: 170,
                            ),
                          ),
      
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              product.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
      
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "\$ ${product.prise}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
      
                                //   Expanded(
                                //     child: ListView.builder(
                                //       itemCount: homeController.itemColor.length,
                                //       shrinkWrap: true,
                                //       scrollDirection: Axis.horizontal,
                                //       itemBuilder: (c, i) {
                                //         return Container(
                                //           padding: EdgeInsets.all(4),
                                //           height: 25,
                                //           width: 25,
                                //           decoration: BoxDecoration(
                                //             borderRadius: BorderRadius.circular(20),
                                //             border: Border.all(
                                //               color: Colors.black,
                                //               width: 1,
                                //             ),
                                //           ),
                                //           child: Container(
                                //             height: 20,
                                //             width: 20,
                                //             decoration: BoxDecoration(
                                //               color: homeController.itemColor[i],
      
                                //               borderRadius: BorderRadius.circular(20),
                                //             ),
                                //           ),
                                //         );
                                //       },
                                //     ),
                                //   ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -1,
                    right: -1,
      
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Obx(
                        () => IconButton(
                          onPressed: () {
                            homeController.select();
                          },
                          icon: homeController.isSelect.value
                              ? Icon(Icons.favorite_border, color: Colors.white)
                              : Icon(Icons.favorite, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
