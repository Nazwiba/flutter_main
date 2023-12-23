import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/movie_provider.dart';

class MovieWishList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wishlistt = context.watch<MovieProvider>().wishlist;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wishlist"),
      ),
      body: ListView.builder(
          itemCount: wishlistt.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              title: Text(wishlistt[index].title),
              subtitle: Text(wishlistt[index].time),
              trailing: IconButton(
                  onPressed: () {
                    context
                        .read<MovieProvider>()
                        .removeWishList(wishlistt[index]);
                  },
                  icon: const Icon(Icons.delete_outlined)),
            ));
          }),
    );
  }
}
