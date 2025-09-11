import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:sprints_shopping_app/offers_model.dart';
import 'package:sprints_shopping_app/pageView_provider.dart';
import 'package:sprints_shopping_app/product_model.dart';

class MainShoppingScreen extends StatefulWidget {
  const MainShoppingScreen({super.key});

  @override
  State<MainShoppingScreen> createState() => _MainShoppingScreenState();
}

class _MainShoppingScreenState extends State<MainShoppingScreen> {
  void showTopToast() {
    Fluttertoast.showToast(
      msg: " Item added to cart",

      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      backgroundColor: const Color.fromARGB(255, 129, 128, 128),
      textColor: const Color.fromARGB(255, 255, 255, 255),
      fontSize: 20,
    );
  }

  final PageController _controller = PageController();

  final List<String> images = [
    "assets/images/laptop.png",
    "assets/images/group.png",
    "assets/images/ambient.png",
  ];

  final List<String> text = [
    "Premium Laptop Collection",
    "Professional Workspace",
    "Ambient Lighting",
  ];
  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    double screenWidth = MediaQuery.of(context).size.width;

    // عدد الأعمدة حسب الوضع
    int crossAxisCount = isLandscape ? 2 : 1;
    final carouselProvider = Provider.of<PageviewProvider>(context);
    final lapimage = Provider.of<Lapimages>(context);

    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                ),
                height: 130,
                width: screenwidth,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Our Products",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenheight * 0.02),
              Text(
                "Featured Products",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 300,
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (value) {
                    carouselProvider.setPage(value);
                  },
                  itemCount: images.length,

                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // ignore: avoid_print
                        print("pageview");
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "${text[index]}",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 4.0,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(images.length, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: carouselProvider.currentPage == index ? 12 : 8,
                    width: carouselProvider.currentPage == index ? 12 : 8,
                    decoration: BoxDecoration(
                      color: carouselProvider.currentPage == index
                          ? Colors.blue
                          : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
              SizedBox(height: screenheight * 0.03),
              Text(
                "Shop Our Collection",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenheight * 0.025),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 3 / 3,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(1, 1),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(30),
                                child: SizedBox(
                                  height: 200,
                                  width: double.infinity,
                                  child: PageView.builder(
                                    itemCount: product.images.length,
                                    itemBuilder: (context, imgIndex) {
                                      return Image.asset(
                                        product.images[imgIndex],
                                        fit: BoxFit.contain,
                                        width: double.infinity,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 15,
                                top: 15,
                                child: Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue,
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      onPressed: () {
                                        showTopToast();
                                      },
                                      icon: Icon(
                                        Icons.shopping_cart,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              product.name,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              product.price,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: screenheight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hot Offers 🔥",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: screenheight * 0.05),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 20,
                  childAspectRatio: isLandscape ? 3.5 : 1.7,
                ),
                itemCount: Offers.length,
                itemBuilder: (BuildContext context, int index) {
                  final offer = Offers[index];
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: screenwidth,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(1, 1),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              offer.title,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              offer.subtitle,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 96, 96, 96),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 60,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              colors: [
                                const Color.fromARGB(255, 112, 55, 226),
                                const Color.fromARGB(255, 218, 27, 167),
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              offer.textbutton,
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: MediaQuery.of(context).padding.bottom + 10),
            ],
          ),
        ),
      ),
    );
  }
}
