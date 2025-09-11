class ProductModel {
  final String name;
  final String price;
  final List<String> images;

  ProductModel({required this.name, required this.price, required this.images});
}

final List<ProductModel> products = [
  ProductModel(
    name: "ASUS ROG Strix Scar",
    price: "\$1,500",
    images: [
      "assets/images/laptops/lap1.png",
      "assets/images/laptops/lap2.png",
      "assets/images/laptops/lap3.png",
      "assets/images/laptops/lap4.png",
      "assets/images/laptops/lap5.png",
    ],
  ),
  ProductModel(
    name: "MacBook Pro 16”",
    price: "\$2,399",
    images: [
      "assets/images/laptops/mac1.jpg",
      "assets/images/laptops/mac2.jpg",
      "assets/images/laptops/mac3.jpg",
      "assets/images/laptops/mac4.jpg",
    ],
  ),
  ProductModel(
    name: "JBL Tune 510 Wireless On-Ear Headphones, Black, JBLT510BTBLKEU",
    price: "\$35",
    images: [
      "assets/images/headphones/headphone1.jpg",
      "assets/images/headphones/headphone2.jpg",
      "assets/images/headphones/headphone3.jpg",
      "assets/images/headphones/headphone4.jpg",
    ],
  ),
  ProductModel(
    name:
        "Hybrid Active Noise Cancelling Bluetooth Headphones with 3D Sound, 4 Microphones, 55 Hours Playtime, Fast Charging, Game Mode, Smart App, Comfortable Foldable Design, Dual Connection with Bluetooth 5.4 - Blue",
    price: "\$50",
    images: [
      "assets/images/headphones/hp1.jpg",
      "assets/images/headphones/hp2.jpg",
      "assets/images/headphones/hp3.jpg",
      "assets/images/headphones/hp4.jpg",
      "assets/images/headphones/hp5.jpg",
    ],
  ),
  ProductModel(
    name: " ROG Swift OLED 39-inch Gaming Monitor",
    price: "\$1800",
    images: [
      "assets/images/monitors/m1.jpg",
      "assets/images/monitors/m2.jpg",
      "assets/images/monitors/m3.jpg",
      "assets/images/monitors/m4.jpg",
      "assets/images/monitors/m5.jpg",
    ],
  ),
  ProductModel(
    name: "Xiaomi G27Qi 2K Gaming Monitor",
    price: "\$200",
    images: [
      "assets/images/monitors/m(2)1.jpg",
      "assets/images/monitors/m(2)2.jpg",
      "assets/images/monitors/m(2)3.jpg",
      "assets/images/monitors/m(2)4.jpg",
      "assets/images/monitors/m(2)5.jpg",
    ],
  ),
  ProductModel(
    name: "Smart Ambient Lighting Corner LED Stand",
    price: "\$91.99",
    images: [
      "assets/images/ambient_lighting/a1.png",
      "assets/images/ambient_lighting/a2.png",
      "assets/images/ambient_lighting/a3.png",
      "assets/images/ambient_lighting/a4.png",
      "assets/images/ambient_lighting/a5.png",
    ],
  ),
];
