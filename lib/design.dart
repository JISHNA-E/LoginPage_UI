import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterdemo/products.dart';

class design extends StatelessWidget {
  design({super.key});
  List names = ["BAG"];
  var productClass = product();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Products",style: TextStyle(fontSize: 40),),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: productClass.items.length,
                  itemBuilder: (context, index) {
                    return Container(padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(boxShadow: [BoxShadow(
                          offset: Offset(2, 2),
                    color: Color.fromARGB(255, 91, 90, 90),
                    blurRadius: 30.0,
                  ),],
                          color: const Color.fromARGB(255, 238, 231, 231),
                          borderRadius: BorderRadius.circular(12),
                        ),
              
                        // Image.network("https://previews.123rf.com/images/iimages/iimages1211/iimages121100055/16115128-illustration-of-a-school-bag-on-a-white-background.jpg"),
                        margin: EdgeInsets.all(30),
                        height: 220,
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 160,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                    productClass.items[index]["image"]))),
                            ),
                           SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(productClass.items[index]["title"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900, fontSize: 25)),
                                ),
                                Container(width: 200,child: Text(productClass.items[index]["description"],overflow: TextOverflow.ellipsis,)),
                                Row(
                                  children: [Text("Rs. ${productClass.items[index]["price"]}"),
                                  SizedBox(width: 30),
                                    ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(Colors.black),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "BUY",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ],
                                )
                                // TextButton(onPressed: (){}, child: Text("buy"))
                              ],
                            ),
                          ],
                        ));
                  }),
            ),
          ],
        ));
  }
}
