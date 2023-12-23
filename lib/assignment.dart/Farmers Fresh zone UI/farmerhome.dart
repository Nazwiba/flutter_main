import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class FarmerHome extends StatefulWidget {
  @override
  State<FarmerHome> createState() => _FarmerHomeState();
}

class _FarmerHomeState extends State<FarmerHome> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "FAMERS FRESH ZONE",
          style: GoogleFonts.gelasio(
              textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))),
        actions: const [
          Icon(
            Icons.location_on_outlined,
            color: Colors.white,
            ),
          Text(
            "Kochi",
            style: TextStyle(color: Colors.white),
            ),
          Icon(
            Icons.arrow_drop_down_outlined,
            color: Colors.white,)],
        bottom: AppBar(
          backgroundColor: Colors.green,
          title: const TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Search for Vegetables, fruits..",
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 112, 111, 111)),
              prefixIcon:
                  Icon(Icons.search, 
                  color: Color.fromARGB(255, 112, 111, 111)),
            ),),),),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: const 
          Color.fromARGB(255, 112, 111, 111),
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.green,),
                label: "HOME"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.green,),
                label: "CART"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                  color: Colors.green,),
                label: "ACCOUNT"),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 207, 249, 211)),
                    child: const Center(
                        child: Text("OFFERS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 35, 78, 36),
                            ))),),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 207, 249, 211)),
                    child: const Center(
                        child: Text("VEGETABLES",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 35, 78, 36),
                            ))),),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 100,
                    //color: const Color.fromARGB(255, 160, 201, 161),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 207, 249, 211)),
                    child: const Center(
                        child: Text("FRUITS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 35, 78, 36),
                            ))),),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 100,
                    //color: const Color.fromARGB(255, 160, 201, 161),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 207, 249, 211)),
                    child: const Center(
                        child: Text("EXOTIC",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 35, 78, 36),
                            ))),),),],),
            Container(
              height: 200,
              width: double.infinity,
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 1,
                childAspectRatio: 0.38,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Stack(
                      children: [
                        Container(
                          height: 800,
                          width: 500,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/farmergrid.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                        Positioned(
                            left: 10,
                            right: 10,
                            //top: 10,
                            bottom: 100,
                            child: Column(
                              children: [
                                Text(
                                  "RESTOCKED AND",
                                  style: GoogleFonts.kanit(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color:
                                         Color.fromARGB(255, 6, 67, 39)))),
                                Text(
                                  "READY FOR YOU!",
                                  style: GoogleFonts.kanit(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color:
                                              Color.fromARGB(255, 6, 67, 39))),
                                ),],)),
                        Positioned(
                            top: 100,
                            left: 50,
                            child: Wrap(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, right: 30),
                                  child: Image.asset(
                                    "assets/icons/apple.png",
                                    height: 70,
                                    width: 70,
                                  )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, right: 30),
                                  child: Image.asset(
                                    "assets/icons/strawberry.png",
                                    height: 70,
                                    width: 70,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, right: 30),
                                  child: Image.asset("assets/icons/banana.png",
                                      height: 70, width: 70),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, right: 30),
                                  child: Image.asset(
                                    "assets/icons/pine apple.png",
                                    height: 70,
                                    width: 70,
                                  ),
                                )
                              ],)),],),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Stack(children: [
                      Container(
                        height: 800,
                        width: 500,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/farmergrid.jpg"),
                                fit: BoxFit.fill)),
                      ),
                      Positioned(
                          left: 10,
                          right: 10,
                          //top: 10,
                          bottom: 100,
                          child: Column(
                            children: [
                              Text(
                                "RESTOCKED AND",
                                style: GoogleFonts.kanit(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Color.fromARGB(255, 6, 67, 39))),
                              ),
                              Text(
                                "READY FOR YOU!",
                                style: GoogleFonts.kanit(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Color.fromARGB(255, 6, 67, 39))),
                              ),],)),
                      Positioned(
                          top: 100,
                          left: 50,
                          child: Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 40, left: 20),
                                child: Image.asset(
                          "assets/icons/Bingxueling-Fruit-Vegetables-Pumpkin.256.png",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 40, left: 20),
                                child: Image.asset(
                            "assets/icons/Bingxueling-Fruit-Vegetables-Tomato.256.png",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 40, left: 20),
                                child: Image.asset(
                                    "assets/icons/Fengsj-Vegetables-Cabbage.128.png",
                                    height: 70,
                                    width: 70),
                              ),
                            ],
                          )),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Stack(children: [
                      Container(
                        height: 800,
                        width: 500,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 245, 194, 211)),
                      ),
                      Positioned(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 80),
                            child: Text(
                              "Choose",
                              style: GoogleFonts.kanit(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 6, 67, 39))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text("Health Daily",
                                style: GoogleFonts.kanit(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color:
                                            Color.fromARGB(255, 6, 67, 39)))),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Fresh Vegetables and Fruits"),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text("Delivered to Your Doorstep"),
                          ),
                          Padding(
                      padding: const EdgeInsets.only(top: 10, right: 40),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                             BorderRadius.circular(20))),
                                    backgroundColor:
                                        const MaterialStatePropertyAll(
                                            Colors.white)),
                                onPressed: () {},
                                child: const Text(
                                  "Order Now",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                        ],
                      )),
                      Positioned(
                        left: 280,
                        top: 10,
                        child: Image.asset("assets/images/bagveggies.jpg",height: 180,width: 300,))
                    ]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150,
                width: 500,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 226, 225, 225),
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40, left: 50),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Icon(
                                  Icons.timer_outlined,
                                  color: Colors.green,
                                  size: 50,
                                ),
                              ),
                              Text("  30 MINS POLICY ")
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40, left: 30),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.green,
                                  size: 50,
                                ),
                              ),
                              Text("TRACEABILITY")
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40, left: 40),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage(
                                "assets/icons/icons8-delivery-boy-65.png"),
                                height: 50,
                                width: 50,
                              ),
                              Text("LOCAL"),
                              Text("SOURCING")
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const ListTile(
              tileColor: Colors.white,
              title: Text(
                "Shop By Category",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/offer.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Offer",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/tomato.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Vegetables",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/pineapplefrmr.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Fruits",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/brocolifrmr.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Exotic",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/carrotfrmr.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Fresh Cuts",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/chickfrmr.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Nutrition Charges",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/blkpprfrmr.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Packed flavours",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/saladfrmr.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Gourment salad",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
                  height: 8,
                  width: 600,
                  color:const  Color.fromARGB(255, 246, 242, 242),
                ),
           const  SizedBox(height: 10,),
            Stack(
              children: [
                Container(
                height: 250,
                width: 600,
                decoration: const BoxDecoration(image: DecorationImage(
                  image: AssetImage("assets/images/farmer image.jpg"),
                  fit: BoxFit.fill)),
              ),
              const Positioned(
                left: 20,
                top: 30,
                child: Text("#KnowYourFarmer",style: 
                TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,
                color:Color.fromARGB(255, 9, 44, 10)),)),
                
              const Positioned(
                left: 20,
                top: 70,
                  child: Text("KRISHNA VADIVEL SAYS THANK YOU",
                  style: TextStyle(color: Colors.white),)),
              
              const Positioned(
                left: 20,
                top: 90,
                child: Text("for buying his Tomato from",
                style: TextStyle(color: Colors.white),)),

             const  Positioned(
                left: 20,
                top: 110,
                child: Text("Farmers Fresh Zone",
                style: TextStyle(color: Colors.white),)),
              ],
            ),
            const SizedBox(height: 15,),
            Container(
                  height: 8,
                  width: 600,
                  color:const  Color.fromARGB(255, 246, 242, 242),
                ),
            const ListTile(
              tileColor: Colors.white,
              title: Text(
                "Best Selling Products",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10,
                  bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  
                        Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                  child: Image.asset("assets/images/ladies finger.jpeg",
                  height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Ladies Finger",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                          Icon(Icons.currency_rupee_outlined,size: 15,),
                          Text("30.6",style: TextStyle(fontWeight: 
                          FontWeight.bold),),
                            ],
                          )),
                        const Positioned(
                          left: 130,
                          top: 200,
                          child: Text("19% OFF",
                          style: TextStyle(color: 
                          Color.fromARGB(255, 136, 30, 23),fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("0.30 Kg",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: 
                      TextStyle(fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  
                        Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/pineapple semi.jpg",
                        height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Pineapple- Semi ripe",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("(800 gm - 1.5 Kg)",style: TextStyle(
                              fontWeight: FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("109",style: TextStyle(fontWeight: 
                              FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius:
                               BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(
                                fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:const EdgeInsets.only(left: 30,right: 10,bottom:10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  
                        Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/cucumber.jpg",height: 150,
                        width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Salad Cucumber",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("32",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        const Positioned(
                          left: 130,
                          top: 200,
                          child: Text("23% OFF",
                          style: TextStyle(color: Color.fromARGB(255, 136, 30, 23),
                          fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("0.50 Kg",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: 
                              BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(
                                fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  
                        Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/kiwi 3.jpg",
                        height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Kiwi (3 Nos)",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("165",style: TextStyle(fontWeight: 
                              FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 Box",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: 
                              BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(
                                fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10,bottom:10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  
                        Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/cauliflower.jpg",
                        height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Cauliflower - 1 Nos",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("(600g - 900g)",style: TextStyle(fontWeight: 
                            FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("55",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        const Positioned(
                          left: 130,
                          top: 200,
                          child: Text("27% OFF",
                          style: TextStyle(color: Color.fromARGB(255, 136, 30, 23),
                          fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: 
                              BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(
                                fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  
                        Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/carrot stick.jpg",
                        height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Carrot Stick Cut - 250gm",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("49",style: TextStyle(fontWeight: 
                              FontWeight.bold),),
                            ],
                          )),
                        const Positioned(
                          left: 130,
                          top: 200,
                          child: Text("28% OFF",
                          style: TextStyle(color: 
                          Color.fromARGB(255, 136, 30, 23),fontWeight: 
                          FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 Box",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: 
                              BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(
                                fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10,
                  bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: const
                         Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/citrus.jpg",
                        height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Citrus - Imported",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("450gm - 550gm",style: TextStyle(
                              fontWeight: FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("119",style: TextStyle(fontWeight: 
                              FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: 
                              BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(
                                fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  
                        Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/avocado.jpg",height: 150,
                        width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Avocado Semi Ripe",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("(550gm - 650gm)",style: TextStyle(fontWeight: 
                            FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                            Text("289",style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: 
                              BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(
                                fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10,
                  bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  
                        Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/green apple.jpg",
                        height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Green Apple - Granny",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Smith (450g - 550g)",style: TextStyle(
                              fontWeight: FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("179",style: TextStyle(fontWeight: 
                              FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: 
                              BorderRadius.circular(3)),
                              color:Colors.green,
                              minWidth: 120,
                              height: 40,
                              child:const  Text("ADD",style: TextStyle(
                                fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  
                        Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/sambar cut.jpg",
                        height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Sambar Cut Mini Pack 250g",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("59",style: TextStyle(fontWeight: 
                              FontWeight.bold),),
                            ],
                          )),
                        const Positioned(
                          left: 130,
                          top: 200,
                          child: Text("14% OFF",
                          style: TextStyle(color: Color.fromARGB(255, 136, 30, 23),fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 Box",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: 
                              BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(
                              fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10,bottom:10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  
                        Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/avial cut.jpg",height: 150,
                        width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Avial Cut Family Pack 500g",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("89",style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          )),
                        const Positioned(
                          left: 130,
                          top: 200,
                          child: Text("19% OFF",
                          style: TextStyle(color: Color.fromARGB(255, 136, 30, 23),
                          fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 Box",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: 
                              BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(
                                fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  
                        Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/beans.jpg",height: 150,
                        width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Beans Haricot",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("(275g - 325g)",style: TextStyle(fontWeight: 
                            FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("35",style: TextStyle(fontWeight: 
                              FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: 
                              BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child:const  Text("ADD",style: TextStyle(
                                fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  
                        Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/onion.jpg",
                        height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Column(
                          children: [
                            Text("Big Onion",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("(950gm - 1050gm)",style: TextStyle(
                              fontWeight: FontWeight.bold),)
                          ],
                        )),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("66",style: TextStyle(fontWeight: 
                              FontWeight.bold),),
                            ],
                          )),
                       
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: 
                              BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child: const Text("ADD",style: TextStyle(
                                fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                      height: 300,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:const  
                        Color.fromARGB(255, 223, 220, 220)),),
                      ),
                      Positioned(
                        left: 20,
                        child: Image.asset("assets/images/cabbage.png",
                        height: 150,width: 150,)),
                      const Positioned(
                        left: 15,
                        top: 150,
                        child: Text("Cabbage(600g - 800g)",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                        const Positioned(
                          left: 15,
                          top: 200,
                          child: Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,),
                              Text("30",style: TextStyle(fontWeight: 
                              FontWeight.bold),),
                            ],
                          )),
                        
                        const Positioned(
                          left: 15,
                          top: 250,
                            child: Text("1.00 NOS",
                            style: TextStyle(fontWeight: FontWeight.bold),)),
                          Positioned(
                            left: 80,
                            top: 245,
                              child:MaterialButton(onPressed: () {},
                              shape: RoundedRectangleBorder(borderRadius: 
                              BorderRadius.circular(3)),
                              color: Colors.green,
                              minWidth: 120,
                              height: 40,
                              child:const  Text("ADD",style: TextStyle(
                                fontSize: 15,color: Colors.white),),),
                              ),
                                
                    ],
                  ),
                ),
              ],
            ),
            MaterialButton(onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: 
            BorderRadius.circular(3)),
            color: Colors.green,
            minWidth: 500,
            height: 40,
            child:const Text("VIEW MORE",style: TextStyle(fontSize: 15,
            color: Colors.white),),
            ),
            Container(
                  height: 8,
                  width: 600,
                  color:const  Color.fromARGB(255, 246, 242, 242),
                ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                Container(
                  height: 250,
                  width: 550,
                  decoration: const BoxDecoration(image: DecorationImage(
                    image: AssetImage("assets/images/border.png"),
                    fit: BoxFit.fill)),
                ),
                Positioned(
                  left: 350,
                  top: 70,
                  child: Image.asset("assets/images/badge.jpg",
                  height: 100,width: 100,)
                  ),
          const Positioned(
                  left: 70,
                  top: 60,
                  child: Text("We are not just SAFE",style: TextStyle(
                    fontWeight: FontWeight.bold),)
                ),
                Positioned(
                  left: 70,
                  top: 75,
                  child: Text("WE ARE",style: GoogleFonts.bebasNeue(color:
                  const  Color.fromARGB(255, 118, 48, 22),
                  textStyle:const  TextStyle(fontSize: 40,fontWeight: 
                  FontWeight.bold)),)
                  ),
                Positioned(
                  left: 70,
                  top: 115,
                  child: Text("CERTIFIED SAFE.",style: GoogleFonts.bebasNeue(
                    color:const  Color.fromARGB(255, 118, 48, 22),
                  textStyle:const  TextStyle(fontSize: 40,fontWeight: 
                  FontWeight.bold)),)
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 165,left: 70),
                  child: MaterialButton(onPressed: (){},
                  shape: const StadiumBorder(),
                  minWidth: 10,
                  height: 10,
                  color:const  Color.fromARGB(255, 118, 48, 22),
                  child:const  Text("View the latest tost results here",
                  style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  ],), ),
                  Container(
                  height: 8,
                  width: 600,
                  color:const  Color.fromARGB(255, 246, 242, 242),
                ),
                 const  Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: ListTile(
                      title: Text("Our Blog Posts",style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                  Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/bld prsr1.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 250,
                        ),
                        
                         Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Control Blood",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 48),
                                child: Text("Pressure,the ri",style: TextStyle(
                                  fontSize: 20),),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30,
                                    top: 20,bottom: 5),
                                    child: Text("a year ago",style: TextStyle(
                                      color: Colors.grey.shade600),),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 90,top: 20),
                                    child: Icon(Icons.arrow_forward,size: 15,
                                    color: Colors.green,),
                                  )],
                              )],
                          ),],
                    ),),),
                    Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/brocoli123.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 250,
                        ),
                        
                         Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Five reasons why",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 40),
                                child: Text("Brocoli should",style: TextStyle(
                                  fontSize: 20),),
                              ),
                              Row(
                                children: [
                                   Padding(
                                    padding: const EdgeInsets.only(right: 30,
                                    top: 20,bottom: 5),
                                    child: Text("a year ago",style: TextStyle(
                                      color: Colors.grey.shade600),),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 90,top: 20),
                                    child: Icon(Icons.arrow_forward,size: 15,
                                    color: Colors.green,),
                                  )],
                              )],
                          ),],
                    ),),),
                    Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/cough.jpg",
                          fit: BoxFit.fill,
                          height: 160,
                          width: 250,
                        ),
                        
                        Column(
                            children: [
                              const Padding(
                                padding:  EdgeInsets.only(right: 50),
                                child: Text(
                                  "Five tips that",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 48),
                                child: Text("prevent you from",style: TextStyle(
                                  fontSize: 20),),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30,
                                    top: 20,bottom: 5),
                                    child: Text("a year ago",style: TextStyle(
                                      color: Colors.grey.shade600),),
                                  ),
                                 const  Padding(
                                    padding: EdgeInsets.only(left: 90,top: 20),
                                    child: Icon(Icons.arrow_forward,size: 15,
                                    color: Colors.green,),
                                  )],
                              )],
                          ),],
                    ),),),
                       ],
                    ),),
                const ListTile(
                  title:Center(child: Text("VIEW MORE",style: TextStyle(
                    fontSize: 15,color: Color.fromARGB(255, 23, 168, 91),
                    fontWeight: FontWeight.bold),)),
                ),
                Container(
                  height: 8,
                  width: 600,
                  color:const  Color.fromARGB(255, 246, 242, 242),
                ),
                const ListTile(
                  title: Text("What Our Customer Say?",style: TextStyle(
                    fontSize: 20,),),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color:const 
                            Color.fromARGB(255, 226, 225, 225),),
                            borderRadius: BorderRadius.circular(3)),
                          height: 250,
                          width: 500,
                          child: const Column(
                            children: [
                              ListTile(
                                title: Text("Shalini Warrier",style: 
                                TextStyle(color: 
                                Color.fromARGB(255, 23, 168, 91),),),
                                leading: CircleAvatar(backgroundImage: 
                                AssetImage("assets/images/Shalini-Warrier-Executive-Director-Federal-Bank.png"),),
                                subtitle: Text("Executive Director, Federal Bank"),
                                trailing: Icon(Icons.format_quote_outlined),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("A friend of mine recommended Farmers Fresh Zone to me, during the first lockdown in March 2020 & i have been a regular customer ever since! You get reliable  services, convenient doorstep delivery, reasonable prices & super fresh products at your fingertips with their really easy to use app! i have been recommending my friends & family to switch to a healthier lifestyle with Farmers Fresh Zone."),
                              )
                              ],
                          ),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color:const  
                            Color.fromARGB(255, 226, 225, 225)),
                            borderRadius: BorderRadius.circular(3)),
                          height: 250,
                          width: 500,
                          child: const Column(
                            children: [
                              ListTile(
                                title: Text("Prince PI",style: TextStyle(
                                  color: Color.fromARGB(255, 23, 168, 91),),),
                                leading: CircleAvatar(backgroundImage: AssetImage(
                                  "assets/images/person prince.jpg"),),
                                subtitle: Text("Online Digital Marketing Business"),
                                trailing: Icon(Icons.format_quote_outlined),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("As concerned parents, we wanted our kids to eat pesticide free & healthy food and that's how we came across Farmers Fresh Zone. Their fresh products & prompt delivery is the reason we have been a part of the Farmers Fresh Zone family for almost three years now. Farmers Fresh Zone is the best solution to countries concerned parents like us!"),
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color:const  
                            Color.fromARGB(255, 226, 225, 225)),
                            borderRadius: BorderRadius.circular(3)),
                          height: 250,
                          width: 500,
                          child: const Column(
                            children: [
                              ListTile(
                                title: Text("Neethu Vipin",style: TextStyle(
                                  color: Color.fromARGB(255, 23, 168, 91),),),
                                leading: CircleAvatar(backgroundImage: 
                                AssetImage("assets/images/neethu.jpg"),),
                                subtitle: Text("Clerk, Naval base, Kochi"),
                                trailing: Icon(Icons.format_quote_outlined),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("I tried Famers Fresh Zone's products for the first time when i was expecting a child. Finding safe, chemical-free products in the city is different. But thanks to Farmers Fresh Zone, I was able to feed myself & my baby fruits and vegetables that are fruits, healthy & 100% Safe-to-eat. FFZ has prompt delivery, fresh & top quality products, my family & I are throughly impressed by their services!"),
                              ),
                              ],
                          ),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: Container(
                          decoration: BoxDecoration(
                           border: Border.all(color:Color.fromARGB(255,226,225,225)),
                            borderRadius: BorderRadius.circular(3)),
                          height: 250,
                          width: 500,
                          child: const Column(
                            children: [
                              ListTile(
                                title: Text("Alosious C M",style: TextStyle(
                                  color: Color.fromARGB(255, 23, 168, 91),),),
                                leading: CircleAvatar(backgroundImage: AssetImage(
                                  "assets/images/alosious.jpg"),),
                                subtitle: Text(""),
                                trailing: Icon(Icons.format_quote_outlined),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("I have been ordering fruits & vegetables from Farmers Fresh Zone for almost a year now. After ordering from FFZ i realized their products are very fresh & taste better too! They not only deliver fresh harvest but also provide information about the farmers, source pesticide - free products & deliver within 16 hours of harvest.Their reliable services & transparancy has earned my trust My family & I have been eating healthy food, thanks to Farmers Fresh Zone.",),
                              )
                              ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 200,
                    width: 500,
                    child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 4),
                            child: Text("This Kochi-based-fam-to-fork online",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          const Padding(
                            padding:  EdgeInsets.only(bottom: 4),
                            child: Text("marketplace is connecting famers",
                            style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          const Text("directly to customers",style: TextStyle(
                            fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30,top: 20),
                                child: Image.asset("assets/images/bbc news.png",
                                height: 60,width: 70,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30,top: 20),
                                child: Image.asset("assets/images/asianet news.jpg",
                                height: 60,width: 70,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30,top: 20),
                                child: Image.asset("assets/images/indian express.jpg",
                                height: 70,width: 70,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30,top: 20),
                                child: Image.asset("assets/images/manoram news.png",
                                height: 60,width: 70,),
                              ),
                              ],
                            ),
                          )
                        ],
                    ),
                  ),
                ),
                Container(
                  height: 8,
                  width: 600,
                  color:const  Color.fromARGB(255, 246, 242, 242),
                ),
                ListTile(
                  title: const Text("Get To Know Us"),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("About Us  |  Our Farmers  |  Blog",style: 
                    TextStyle(color: Colors.grey.shade600),),
                  ),
                ),
               const  SizedBox(height: 20,),
                ListTile(
                  title: const Text("Useful Links"),
                  subtitle: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 220,bottom: 10,
                        top: 10),
                        child: Text("Privacy Policy  |  Return & Refund Policy  |",style: TextStyle(color: Colors.grey.shade600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 360),
                        child: Text("Terms & Conditions",style: TextStyle(
                          color: Colors.grey.shade600)),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 150,),
                      child: FaIcon(FontAwesomeIcons.twitter,color: 
                      Colors.grey.shade600,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: FaIcon(FontAwesomeIcons.youtube,color: 
                      Colors.grey.shade600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: FaIcon(FontAwesomeIcons.facebook,color: 
                      Colors.grey.shade600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: FaIcon(FontAwesomeIcons.instagram,color: 
                      Colors.grey.shade600),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                    Container(
                    height: 100,
                    width: 550,
                    color: Colors.green,
                    child: const Column(
                      children: [
          Padding(
          padding: EdgeInsets.only(top: 30),
              child: Text("Copyright @ 2021 Farmers Fresh Zone.",
              style: TextStyle(color: Colors.white),),
              ),
              Text("All rights Reserved. V.2.40.51",style: 
              TextStyle(color: Colors.white),)
                ],
              ),
          ),
          ],
         ),
      ),
    );
  }
}
