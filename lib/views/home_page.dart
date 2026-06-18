import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:fruit_hub_app/views/detail_page.dart';
import 'package:fruit_hub_app/views/welcome_page.dart';
import 'package:fruit_hub_app/widgets/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        titleSpacing: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Icon(Icons.toc_rounded),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage()),
                );
              },
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: 60,
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_basket, color: Color(0xFFFFA451)),
                    SizedBox(height: 2),
                    Text("My Basket", style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 257,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Hello Fajer, ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(
                      text: "What fruit salad combo do you want today?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F4F6),
                      hintText: 'Search for fruit salad combos',
                      hintStyle: TextStyle(fontSize: 14),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 15, right: 10),
                        child: Icon(Icons.search, size: 16),
                      ),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 0,
                        minHeight: 0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Icon(Icons.tune),
              ],
            ),
            SizedBox(height: 35),
            Text(
              "Recommended Combo",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CustomCard(
                  title: "Honey Lime Combo",
                  price: '2,000',
                  saladImage: Image.asset("assets/img/salad1.png"),
                ),
                Spacer(),
                CustomCard(
                  title: "Berry Mango Combo",
                  price: '8,000',
                  saladImage: Image.asset("assets/img/salad2.png"),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              spacing: 30,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hottest",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                Text(
                  "New combo",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                Text(
                  "Top",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CustomCard(
                  title: "Quinoa fruit salad",
                  price: '10,000',
                  saladImage: Image.asset("assets/img/salad3.png"),
                  useShadow: false,
                  backgroundColor: fromCssColor("#FFFAEB"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage()),
                    );
                  },
                ),
                Spacer(),
                CustomCard(
                  title: "Tropical Fruit Salad",
                  price: '10,000',
                  saladImage: Image.asset("assets/img/salad4.png"),
                  useShadow: false,
                  backgroundColor: fromCssColor("#FEF0F0"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
