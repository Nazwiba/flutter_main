import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Musify(),
  ));
}

class Musify extends StatefulWidget {
  @override
  State<Musify> createState() => _MusifyState();
}

class _MusifyState extends State<Musify> {
  var index = 0;
  var image = [
    "assets/images/musicappimage.jpg",
    "assets/images/popmusic pic.png",
    "assets/images/lofi pic.png",
    "assets/images/musicimage1.jpg",
    "assets/images/musicappimage1.jpg",
    "assets/images/musicappimage2.jpg",
    "assets/images/musciappimage3.jpg",
    "assets/images/musicappimage4.jpg",
    "assets/images/image123.jpg",
    "assets/images/image345.jpg",
    "assets/images/image456.jpg",
    "assets/images/image7890.jpg",
    "assets/images/image45678.jpg",
    "assets/images/image56789.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(
              "Musify",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 235, 140, 172)),
            ),
          ),
          bottom: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              "Suggested Playlists",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 235, 140, 172)),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: const Color.fromARGB(255, 235, 140, 172),
            unselectedItemColor: const Color.fromARGB(255, 235, 140, 172),
            selectedLabelStyle: const TextStyle(fontSize: 15),
            onTap: (tapindex) {
              setState(() {
                index = tapindex;
              });
            },
            currentIndex: index,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home,
                      color: Color.fromARGB(255, 235, 140, 172)),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search,
                      color: Color.fromARGB(255, 235, 140, 172)),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite,
                      color: Color.fromARGB(255, 235, 140, 172)),
                  label: "Favourite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz,
                      color: Color.fromARGB(255, 235, 140, 172)),
                  label: "More Options"),
            ]),
        body: SingleChildScrollView( // to avoid overflow
          child: Column(children: [
            Container(
                height: 150,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: GridView.count(
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 1,
                    children: List.generate(
                        14,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(image[index]),
                                        fit: BoxFit.fill)),
                              ),
                            )))),
            const ListTile(
              title: Text(
                "Recommended For You",
                style: TextStyle(
                    color: Color.fromARGB(255, 235, 140, 172),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
                tileColor: Colors.black,
                leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/hero.webp",
                      fit: BoxFit.fill,
                    )),
                title: const Text(
                  "Hero",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ),
                subtitle: const Text(
                  "Taylor Swift",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                trailing: const Wrap(children: [
                  Icon(
                    Icons.star_border_outlined,
                    color: Color.fromARGB(255, 235, 140, 172),
                  ),
                  Icon(Icons.download_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ])),
            ListTile(
                tileColor: Colors.black,
                leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/unholy.jpg",
                      fit: BoxFit.fill,
                    )),
                title: const Text(
                  "Unholy",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ),
                subtitle: const Text(
                  "Sam Smith, Kim Pectras",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                trailing: const Wrap(children: [
                  Icon(
                    Icons.star_border_outlined,
                    color: Color.fromARGB(255, 235, 140, 172),
                  ),
                  Icon(Icons.download_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ])),
            ListTile(
                tileColor: Colors.black,
                leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/lift me up.webp",
                      fit: BoxFit.fill,
                    )),
                title: const Text(
                  "Lift Me Up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ),
                subtitle: const Text(
                  "Rihanna",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                trailing: const Wrap(children: [
                  Icon(
                    Icons.star_border_outlined,
                    color: Color.fromARGB(255, 235, 140, 172),
                  ),
                  Icon(Icons.download_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ])),
            ListTile(
                tileColor: Colors.black,
                leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/depression.jpeg",
                      fit: BoxFit.fill,
                    )),
                title: const Text(
                  "Depression",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ),
                subtitle: const Text(
                  "Dax",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                trailing: const Wrap(children: [
                  Icon(
                    Icons.star_border_outlined,
                    color: Color.fromARGB(255, 235, 140, 172),
                  ),
                  Icon(Icons.download_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ])),
            ListTile(
                tileColor: Colors.black,
                leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/i'm good.jpg",
                      fit: BoxFit.fill,
                    )),
                title: const Text("I'm Good",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 235, 140, 172))),
                subtitle: const Text(
                  "David Guetta & Bebe Rexha",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                trailing: const Wrap(children: [
                  Icon(Icons.star_border_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                  Icon(Icons.download_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ])),
                ListTile(
                tileColor: Colors.black,
                leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/i'm good.jpg",
                      fit: BoxFit.fill,
                    )),
                title: const Text("Let Me Down Slowly",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 235, 140, 172))),
                subtitle: const Text(
                  "Alec Benjamin",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                trailing: const Wrap(children: [
                  Icon(Icons.star_border_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                  Icon(Icons.download_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ])),
                ListTile(
                tileColor: Colors.black,
                leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/let mw down slowly.jpg",
                      fit: BoxFit.fill,
                    )),
                title: const Text("Perfect",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 235, 140, 172))),
                subtitle: const Text(
                  "Ed Sheeran",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                trailing: const Wrap(children: [
                  Icon(Icons.star_border_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                  Icon(Icons.download_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ])),
                ListTile(
                tileColor: Colors.black,
                leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/perfect.jpg",
                      fit: BoxFit.fill,
                    )),
                title: const Text("Lover",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 235, 140, 172))),
                subtitle: const Text(
                  "Taylor Swift",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                trailing: const Wrap(children: [
                  Icon(Icons.star_border_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                  Icon(Icons.download_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ])),
                ListTile(
                tileColor: Colors.black,
                leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/arcade.jpg",
                      fit: BoxFit.fill,
                    )),
                title: const Text("Arcade",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 235, 140, 172))),
                subtitle: const Text(
                  "Duncan Laurence",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                trailing: const Wrap(children: [
                  Icon(Icons.star_border_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                  Icon(Icons.download_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ])),
                ListTile(
                tileColor: Colors.black,
                leading: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/heat waves.jpg",
                      fit: BoxFit.fill,
                    )),
                title: const Text("Heat Waves",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 235, 140, 172))),
                subtitle: const Text(
                  "Glass Animals",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                trailing: const Wrap(children: [
                  Icon(Icons.star_border_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                  Icon(Icons.download_outlined,
                      color: Color.fromARGB(255, 235, 140, 172)),
                ])),
          ]),
        ));
  }
}
