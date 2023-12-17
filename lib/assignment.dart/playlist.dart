import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PlayLists(),
  ));
}

class PlayLists extends StatefulWidget {
  @override
  State<PlayLists> createState() => _PlayListsState();
}

class _PlayListsState extends State<PlayLists> {
  var images = [
    "assets/images/musicappimage.jpg",
    "assets/images/popmusic pic.png",
    "assets/images/lofi pic.png",
    "assets/images/musicimage1.jpg",
    "assets/images/musicappimage1.jpg",
    "assets/images/musicappimage2.jpg",
    "assets/images/musciappimage3.jpg",
    "assets/images/musicappimage4.jpg"
  ];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
            child: Text(
          "Playlists",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 235, 140, 172)),
        )),
        bottom: AppBar(
          backgroundColor: Colors.black,
          title: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade900,
              hintText: "Search...",
              hintStyle:
                  const TextStyle(color:
                   Color.fromARGB(255, 235, 140, 172)),
              suffixIcon: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 235, 140, 172),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
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
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 235, 140, 172),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 235, 140, 172),
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.playlist_add,
                  color: Color.fromARGB(255, 235, 140, 172),
                ),
                label: "Playlist"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz,
                  color: Color.fromARGB(255, 235, 140, 172),
                ),
                label: "More Option"),
          ]),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(8, (index) =>
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.fill),
            ),
          ),
        )),),
    );
  }
}





























//       body: GridView.builder(
//           itemCount: 8,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 10,
//               mainAxisExtent: 100),
//           itemBuilder: (context, index) => Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       //color: Colors.white,
//                       borderRadius: BorderRadius.all(Radius.circular(30)),
//                       image: DecorationImage(
//                           image: AssetImage(images[index]), fit: BoxFit.fill)),
//                 ),
//               )),
//     );
//   }
// }
