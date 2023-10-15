import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_riverpod/constants/themes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: _drawer(),
      body: _body(context),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: kSecondaryColor,
      title: SvgPicture.asset(
        'assets/general/store_brand_white.svg',
        color: kWhiteColor,
        width: 150,
      ),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.local_mall_outlined))
      ],
    );
  }

  Drawer _drawer() {
    return const Drawer();
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.height / 40),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Apple Store", style: AppTheme.kBigTitle),
                        Text(
                            "Find the Apple product and accessories you are looking for",
                            style: AppTheme.kBodyText),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Text("Shop new year"))
                      ],
                    ),
                  ),
                ),
                Image.asset("assets/general/landing.png")
              ],
            ),
          )
        ],
      ),
    );
  }
}
