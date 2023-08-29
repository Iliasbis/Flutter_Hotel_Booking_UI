import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/util/responsive/MediumText.dart';
import 'package:hotel_booking/util/responsive/SmallText.dart';
import 'package:provider/provider.dart';

import '../provider/FavoritesProvider.dart';

class FavoritesPage extends StatefulWidget {
  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    final favoriteHotels = favoritesProvider.favoriteHotels;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
      body: ListView.builder(
        itemCount: favoriteHotels.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(favoriteHotels[index].imageUrl),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MediumText(
                            text: favoriteHotels[index].name,
                            font: FontWeight.w600,
                          ),
                          SmallText(
                            text:
                                "${favoriteHotels[index].city} - \$${favoriteHotels[index].price.toStringAsFixed(2)}",
                            color: Colors.black,
                          )
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        final favoritesProvider =
                            Provider.of<FavoritesProvider>(context,
                                listen: false);
                        favoritesProvider
                            .removeFromFavorites(favoriteHotels[index]);
                      });
                    },
                    icon: const Icon(
                      CupertinoIcons.delete,
                      color: Colors.red,
                      size: 34,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
