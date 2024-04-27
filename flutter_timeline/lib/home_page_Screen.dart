import 'package:flutter/material.dart';
import 'package:flutter_timeline/time_line_tile_ui.dart';
import 'package:timeline_tile/timeline_tile.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBE3D5),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF776B50),
        title: const Text('Time Line Tile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: const [
            TimeLineTileUI(
              isFirst: true,
              isLast: false,
              isPast: true,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.book_online, color: Colors.white),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Order Placed.',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    'Your order is placed successfully. It is yet to be packed & shipped.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            TimeLineTileUI(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.card_giftcard, color: Colors.white),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Order Is Packed',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    'Your order is packed & ready to dispatch from our warehouse.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            TimeLineTileUI(
              isFirst: false,
              isLast: false,
              isPast: false,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.local_shipping, color: Colors.white),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Order Dispatched',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    'Your order is dispatched from our warehouse, it will take 5-7 working days for you to get the delivery.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            TimeLineTileUI(
              isFirst: false,
              isLast: true,
              isPast: true,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.home_work, color: Colors.white),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Order Delivery',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    'You will get your order on 8th of December, please be available at your address to receive the order.',
                    style: TextStyle(color: Colors.white),
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
