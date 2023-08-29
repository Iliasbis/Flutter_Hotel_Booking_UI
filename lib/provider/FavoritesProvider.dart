import 'package:flutter/cupertino.dart';

import '../util/class/Hotel.dart';

class FavoritesProvider extends ChangeNotifier {
  List<Hotel> favoriteHotels = [];

  void addToFavorites(Hotel hotel) {
    favoriteHotels.add(hotel);
    notifyListeners();
  }

  void removeFromFavorites(Hotel hotel) {
    favoriteHotels.remove(hotel);
    notifyListeners();
  }
}

