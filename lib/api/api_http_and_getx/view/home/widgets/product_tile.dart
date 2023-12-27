import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_main/api/api_http_and_getx/model/product_model.dart';

class ProductTile extends StatelessWidget {
  final Products product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5)),
              child: CachedNetworkImage(imageUrl: product.image!,fit:BoxFit.fill),
            ),
          ),
          const SizedBox(height: 10,),
          Text(product.title!,maxLines: 2,),
          const SizedBox(height: 10,),
          Text("${product.price!}"),
          const SizedBox(height: 10,),
          Text("${product.rating?.rate!}"),
        ],
      ),
    );
  }
}
