import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marwanecommerceapp/constants/network_images.dart';
import 'package:marwanecommerceapp/models/products.dart';
import 'package:marwanecommerceapp/views/widgets/list_items_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildHeaderOfList(
    BuildContext context, {
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                onTap: onTap,
                child: const Text(
                  "View All",
                  style: TextStyle(fontSize: 13),
                ),
              )
            ],
          ),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 13, color: Colors.black54),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final sh = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image(
              image: const NetworkImage(AppAssets.topBannerHomePageAsset),
              width: double.infinity,
              height: sh * 0.3,
              fit: BoxFit.fill,
              colorBlendMode: BlendMode.darken,
            ),
            Opacity(
              opacity: 0.3,
              child: Container(
                color: Colors.black,
                width: double.infinity,
                height: sh * 0.3,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 24.0,
              ),
              child: Text(
                "Street Clothes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _buildHeaderOfList(context,
                  title: "Sale", subtitle: "super summer sale"),
            ],
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        SizedBox(
          height: sh * 0.4,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: dummyProducts
                .map(
                  (e) => HomeListItems(product: e),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
