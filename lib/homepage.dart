import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Container(
          height: 50.0,
          width: 100.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/flipkart.png'),
                fit: BoxFit.contain,
              )),
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black87,
        // unselectedItemColor: Colors.black87,
        // showUnselectedLabels: true,
        // showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,color: Colors.black),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined,color: Colors.black),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded,color: Colors.black),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined,color: Colors.black),
            label: "Account",
          ),BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on_outlined,color: Colors.black),
            label: "Super Coins",
          ),
        ],
      ),
      // bottomSheet: BottomSheetContainer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            SizedBox(
              height: 5.0,
            ),
            MenuStripe(),
            OfferSlider(),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  ItemsCard(),
                  ItemsCard(
                    imageUrl: 'assets/electronics.png',
                    offer: 'Min. 60% off',
                  ),
                  ItemsCard(
                    imageUrl: 'assets/mobiles.png',
                    offer: 'Min. 30% off',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discounts for You',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Center(
                          child: Text(
                        'View all',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      )),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 350.0,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: ItemsCard()),
                        Expanded(
                          child: ItemsCard(
                            imageUrl: 'assets/electronics.png',
                            offer: 'Min. 60% off',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: ItemsCard(
                            imageUrl: 'assets/fashion.png',
                            offer: 'Min. 70% off',
                          ),
                        ),
                        Expanded(
                            child: ItemsCard(
                          imageUrl: 'assets/grocery.png',
                          offer: 'Min. 20% off',
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            OfferSlider(),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  ItemsCard(),
                  ItemsCard(
                    imageUrl: 'assets/electronics.png',
                    offer: 'Min. 60% off',
                  ),
                  ItemsCard(
                    imageUrl: 'assets/mobiles.png',
                    offer: 'Min. 30% off',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Search for Products, Brands and New Products..',
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            suffixIcon: InkWell(
              onTap: () {},
              child: Container(
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.2),
                ),
                child: Center(
                  child: Icon(
                    Icons.mic,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

class MenuStripe extends StatelessWidget {
  const MenuStripe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(color: Colors.white),
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.6,
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'All Categories',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13.0),
                )
              ],
            ),
          ),
          MenuStripeIteam(),
          MenuStripeIteam(
            imageUrl: 'mobiles',
            iteamLabel: 'Mobiles',
          ),
          MenuStripeIteam(imageUrl: 'appliance', iteamLabel: 'Appliances'),
          MenuStripeIteam(
            imageUrl: 'electronics',
            iteamLabel: 'Electronics',
          ),
          MenuStripeIteam(
            imageUrl: 'fashion',
            iteamLabel: 'Fashion',
          ),
          MenuStripeIteam(
            imageUrl: 'grocery',
            iteamLabel: 'Grocery',
          ),
        ],
      ),
    );
  }
}

class MenuStripeIteam extends StatelessWidget {
  final String? imageUrl;
  final String? iteamLabel;

  const MenuStripeIteam({Key? key, this.imageUrl, this.iteamLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/${imageUrl ?? 'topoffers'}.png')
              )
          ),
        ),
        Text(
          iteamLabel ?? 'Top Offers',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13.0
          ),
        )
      ],
    );
  }
}

class OfferSlider extends StatelessWidget {
  const OfferSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.62,
        scrollDirection: Axis.horizontal,
        children: [
          OfferSliderIteam(),
          OfferSliderIteam(),
          OfferSliderIteam(),
          OfferSliderIteam(),
        ],
      ),
    );
  }
}

class OfferSliderIteam extends StatelessWidget {
  final String? imageUrl;
  final String? offerLabel;
  final String? offerPercentage;

  const OfferSliderIteam(
      {Key? key, this.imageUrl, this.offerLabel, this.offerPercentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.network(imageUrl ??
                            'https://t4.ftcdn.net/jpg/02/07/45/97/360_F_207459754_XZ4VRclGSmux91GZ0ukm4oOPcF8wkN08.jpg')
                        .image,
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  offerLabel ??
                      'Computer Bestsellers \nLaptops, Printers, Monitors',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 30.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                  ),
                  child: Center(
                      child: Text(
                    offerPercentage ?? '30-75% OFF',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
                ),
                SizedBox(
                  height: 70.0,
                ),
                Container(
                    color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'No Cost EMI Durability Certified',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemsCard extends StatelessWidget {
  final String? imageUrl;
  final String? offer;

  const ItemsCard({Key? key, this.imageUrl, this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 160.0,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 120.0,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imageUrl ?? 'assets/appliance.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 20.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                  ),
                  child: Center(
                    child: Text(
                      offer ?? 'Min. 50% off',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 13.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}