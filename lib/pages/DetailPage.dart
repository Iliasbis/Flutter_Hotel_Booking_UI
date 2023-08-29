import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/util/class/Hotel.dart';
import 'package:hotel_booking/util/responsive/ExtraSmallText.dart';
import 'package:hotel_booking/util/responsive/LargeText.dart';
import 'package:hotel_booking/util/responsive/MediumText.dart';
import 'package:hotel_booking/util/responsive/SmallText.dart';
import 'package:hotel_booking/util/widgets/AppBarButton.dart';
import 'package:provider/provider.dart';

import '../provider/FavoritesProvider.dart';
import '../util/widgets/DefaultButton.dart';

class DetailPage extends StatefulWidget {
  final Hotel hotel;
  const DetailPage({
    required this.hotel,
    super.key,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool? swimmingPool = false;
  bool? rooms = false;
  bool? bar = false;
  bool? park = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height / 2,
              width: width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                image: DecorationImage(
                    image: AssetImage(widget.hotel.imageUrl),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppBarButton(
                          icon: CupertinoIcons.back,
                          clickedIcon: () {
                            Navigator.pop(context);
                          },
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.5),
                          ),
                          child: IconButton(
                            icon: Icon(
                              widget.hotel.isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: widget.hotel.isFavorite
                                  ? Colors.red
                                  : Colors.white,
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  final favoritesProvider =
                                      Provider.of<FavoritesProvider>(context,
                                          listen: false);
                                  widget.hotel.isFavorite =
                                      !widget.hotel.isFavorite;
                                  if (widget.hotel.isFavorite) {
                                    favoritesProvider
                                        .addToFavorites(widget.hotel);
                                  } else {
                                    favoritesProvider
                                        .removeFromFavorites(widget.hotel);
                                  }
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LargeText(
                                text: widget.hotel.name,
                                color: Colors.white,
                              ),
                              ExtraSmallText(
                                align: TextAlign.left,
                                text: widget.hotel.description,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(widget.hotel.image1),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(widget.hotel.image1),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(widget.hotel.image1),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: width,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                child: Column(
                  children: [
                    SizedBox(
                      width: width,
                      child: const LargeText(
                        text: "About Us",
                        font: FontWeight.w600,
                        align: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SmallText(
                      text: widget.hotel.aboutUs,
                      color: Colors.grey.shade600,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: width,
                      child: const LargeText(
                        text: "Services & Facilities",
                        font: FontWeight.w600,
                        align: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: swimmingPool,
                                  onChanged: (value) {
                                    setState(() {
                                      swimmingPool = value;
                                      print(swimmingPool);
                                    });
                                  },
                                ),
                                SmallText(
                                  text: "Swimming Pool",
                                  color: Colors.grey.shade600,
                                )
                              ],
                            ),
                            SizedBox(width: width / 5),
                            Row(
                              children: [
                                Checkbox(
                                  value: rooms,
                                  onChanged: (value) {
                                    setState(() {
                                      rooms = value;
                                    });
                                  },
                                ),
                                SmallText(
                                  text: "4 Rooms",
                                  color: Colors.grey.shade600,
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: park,
                                  onChanged: (value) {
                                    setState(() {
                                      park = value;
                                    });
                                  },
                                ),
                                SmallText(
                                  text: "Parking Area",
                                  color: Colors.grey.shade600,
                                )
                              ],
                            ),
                            SizedBox(width: width / 4),
                            Row(
                              children: [
                                Checkbox(
                                  value: bar,
                                  onChanged: (value) {
                                    setState(() {
                                      bar = value;
                                    });
                                  },
                                ),
                                SmallText(
                                  text: "Bars",
                                  color: Colors.grey.shade600,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: width,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SmallText(
                                  text: "Price estimate",
                                  color: Colors.black,
                                ),
                                MediumText(
                                  text: "\$" +
                                      widget.hotel.price.toString() +
                                      "/night",
                                  color: Colors.black,
                                )
                              ],
                            ),
                            DefaultButton(
                                clickedButton: () {},
                                text: 'Reserve Now',
                                width: width / 3)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
