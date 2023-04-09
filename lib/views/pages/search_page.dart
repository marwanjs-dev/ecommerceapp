import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final sh = MediaQuery.of(context).size.height;
    final sw = MediaQuery.of(context).size.width;
    return Container(
      width: sw,
      height: sh,
      decoration: BoxDecoration(
        image: DecorationImage(
          //change the opacity of a background image
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.7),
            BlendMode.darken,
          ),
          fit: BoxFit.fill,
          image: const AssetImage(
            "assets/bpw.gif",
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          //leading: const BackButton(color: Colors.black),
          centerTitle: true,
          title: const Text(
            "Visual Search",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 20,
            ),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: sh * 0.2,
                  ),
                  const Text(
                    "Search for an outfit by taking a photo or uploading an image",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  SizedBox(
                    height: sh * 0.05,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0),
                      shape: BoxShape.rectangle,
                    ),
                    height: sh * 0.045,
                    width: sw * 0.9,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: sw * 0.9,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Take a Photo",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sh * 0.03,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                        shape: BoxShape.rectangle,
                        // Important
                        border: Border.all(color: Colors.white)),
                    height: sh * 0.045,
                    width: sw * 0.9,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: sw * 0.9,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Upload",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
