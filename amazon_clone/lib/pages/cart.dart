import 'package:amazon_clone/utils/search_screen.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
            appBar: PreferredSize(
          preferredSize: const Size(double.infinity,70),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.cyanAccent,
                    Colors.greenAccent
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Padding(
                    padding: const EdgeInsets.fromLTRB(16,0,0,0),
                    child: Image.asset('lib/images/amazon.png',height: 35,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchScreen()));
                        },
                        child: Container(
                          width: width*0.6,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.blueGrey,width: 2),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Search',style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600),),
                                Icon(Icons.search,size: 28,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]
                ),
              ]
            ),
          ),
      ),
      body: Text("Cart Page!!!"),
    );
  }
}