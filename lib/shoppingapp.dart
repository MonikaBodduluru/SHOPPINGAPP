
import 'package:flutter/material.dart';
import 'package:shoppingapp/shoppingappmodal.dart';

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
  title: Text('Shopping App'),
  centerTitle: true, // Added this line to center the title
),

        body: 
            Container(
              //width: 200,
              color: Colors.white,
              child: ListView.builder(
                itemCount: homePageData.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductListItem(product: homePageData[index]);
                },
              ),
            ),
           
      ),
    );
  }
}

class ProductListItem extends StatelessWidget {
  final Map<String, String> product;

  ProductListItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
        color: Color.fromARGB(50, 130, 90, 100),
        child: Row(
          children: [
            Image.network(
              product['image']!,
              height: 100,
              width: 100,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${product['title']}',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 10),
                Text(
                  '${product['price']}',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




