import 'package:flutter/material.dart';
import 'package:flutter_main/state_mngmnt_prvdr/view/movie_wishlist.dart';
import 'package:provider/provider.dart';

import '../provider/movie_provider.dart';

void main() {
  runApp(ChangeNotifierProvider<MovieProvider>(
    create: (context) => MovieProvider(),
    child: MaterialApp(
      home: MovieMain(),
    ),
  ));
}

class MovieMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wishlistt = context.watch<MovieProvider>().wishlist;
    var moviess = context.watch<MovieProvider>().movies;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MovieWishList()));
              },
              icon: const Icon(Icons.favorite),
              label: Text("Wishlist ${wishlistt.length}")),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: moviess.length,
              itemBuilder: (context, index) {
                //final current_movie =
                return Card(
                  child: ListTile(
                    title: Text(moviess[index].title),
                    subtitle: Text(moviess[index].time),
                    trailing: IconButton(
                        onPressed: () {
                          if (!wishlistt.contains(moviess[index])) {
                            context
                                .read<MovieProvider>()
                                .addWishList(moviess[index]);
                          } else {
                            context
                                .read<MovieProvider>()
                                .removeWishList(moviess[index]);
                          }
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: wishlistt.contains(moviess[index])
                              ? Colors.red
                              : Colors.grey,
                        )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
