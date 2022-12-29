import 'package:marwanecommerceapp/constants/network_images.dart';

class Product {
  final String id;
  final String title;
  final double price;
  final String imgUrl;
  final int? discountValue;
  final String category;
  final double? rate;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.imgUrl,
    this.discountValue,
    required this.category,
    this.rate,
  });
}

List<Product> dummyProducts = [
  Product(
    id: "1",
    title: "T-shirt",
    price: 300.99,
    imgUrl: AppAssets.tempProductAsset1,
    category: "clothes",
    discountValue: 20,
  ),
  Product(
    id: "2",
    title: "T-shirt",
    price: 300.99,
    imgUrl: AppAssets.tempProductAsset1,
    category: "clothes",
    discountValue: 20,
  ),
  Product(
    id: "3",
    title: "T-shirt",
    price: 300.99,
    imgUrl: AppAssets.tempProductAsset1,
    category: "clothes",
  ),
  Product(
    id: "4",
    title: "T-shirt",
    price: 300.99,
    imgUrl: AppAssets.tempProductAsset1,
    category: "clothes",
    discountValue: 20,
  ),
];
