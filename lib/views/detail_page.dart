import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:fruit_hub_app/views/basket_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: fromCssColor("#FFA451"),
        leadingWidth: 90,
        leading: Padding(
          padding: const EdgeInsets.only(left: 14, top: 16, bottom: 16),
          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios_new, size: 14, color: Colors.black),
                  Text(
                    "Go back",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: SizedBox(
            height: 176,
            child: Image.asset(
              "assets/img/saladdetail.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
        toolbarHeight: 60,
      ),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Judul produk
                    const Text(
                      "Quinoa Fruit Salad",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E2A4A),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            _buildQtyButton(icon: Icons.remove),
                            const SizedBox(width: 16),
                            const Text(
                              "1",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(width: 16),
                            _buildQtyButton(icon: Icons.add),
                          ],
                        ),
                        const Text(
                          "₦ 2,000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E2A4A),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Divider(color: Colors.grey.shade300),
                    const SizedBox(height: 16),
                    Text(
                      "One Pack Contains:",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: fromCssColor("#FFA451"),
                        decoration: TextDecoration.underline,
                        decorationColor: fromCssColor("#FFA451"),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1E2A4A),
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 84,
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey.shade200)),
              ),
              child: Row(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Icon(Icons.favorite_border, color: Colors.grey),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BasketPage(
                              items: const [
                                BasketItem(
                                  title: "Quinoa fruit salad",
                                  packs: 2,
                                  price: 20000,
                                  imagePath: "assets/img/salad3.png",
                                ),
                                BasketItem(
                                  title: "Melon fruit salad",
                                  packs: 2,
                                  price: 20000,
                                  imagePath: "assets/img/salad2.png",
                                ),
                                BasketItem(
                                  title: "Tropical fruit salad",
                                  packs: 2,
                                  price: 20000,
                                  imagePath: "assets/img/salad4.png",
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: fromCssColor("#FFA451"),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Add to basket",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQtyButton({required IconData icon}) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: fromCssColor("#FFA451").withOpacity(0.15),
      ),
      child: Icon(icon, size: 18, color: fromCssColor("#FFA451")),
    );
  }
}
