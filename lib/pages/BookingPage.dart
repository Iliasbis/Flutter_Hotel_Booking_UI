import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/FavoritesProvider.dart';
import '../util/class/Hotel.dart';
import '../util/responsive/ExtraSmallText.dart';
import '../util/responsive/SmallText.dart';
import 'DetailPage.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});
  @override
  Widget build(BuildContext context) {
    List<Hotel> allHotels = [
      Hotel(
        name: "Hotel ABC",
        city: "New York",
        price: 200.0,
        imageUrl: "lib/images/hotel1.jpg",
        image1: "lib/images/hotel2.jpg",
        image2: "lib/images/hotel3.jpg",
        image3: "lib/images/hotel4.jpg",
        description:
            "Welcome to Hotel ABC, a luxury hotel in the heart of New York City.",
        rate: "4.5",
        aboutUs:
            "Hotel ABC offers world-class amenities and exceptional service to ensure a memorable stay for our guests.",
      ),
      Hotel(
        name: "Hotel XYZ",
        city: "London",
        price: 150.0,
        imageUrl: "lib/images/hotel2.jpg",
        image1: "lib/images/hotel2.jpg",
        image2: "lib/images/hotel3.jpg",
        image3: "lib/images/hotel4.jpg",
        description:
            "Discover the elegance and charm of Hotel XYZ located in the heart of London.",
        rate: "4.2",
        aboutUs:
            "Hotel XYZ offers comfortable accommodations and breathtaking views of the city skyline.",
      ),
      Hotel(
        name: "Hotel PQR",
        city: "Paris",
        price: 180.0,
        imageUrl: "lib/images/hotel3.jpg",
        image1: "lib/images/hotel4.jpg",
        image2: "lib/images/hotel5.jpg",
        image3: "lib/images/hotel2.jpg",
        description:
            "Experience the romance and luxury at Hotel PQR, located in the heart of Paris.",
        rate: "4.8",
        aboutUs:
            "Hotel PQR offers exquisite dining options and a tranquil spa for the ultimate relaxation.",
      ),
      Hotel(
        name: "Hotel MNO",
        city: "Tokyo",
        price: 220.0,
        imageUrl: "lib/images/hotel4.jpg",
        image1: "lib/images/hotel5.jpg",
        image2: "lib/images/hotel6.png",
        image3: "lib/images/hotel7.png",
        description:
            "Indulge in the modern luxury of Hotel MNO, situated in the vibrant city of Tokyo.",
        rate: "4.7",
        aboutUs:
            "Hotel MNO offers spacious rooms, state-of-the-art facilities, and easy access to Tokyo's top attractions.",
      ),
      Hotel(
        name: "Hotel EFG",
        city: "Rome",
        price: 190.0,
        imageUrl: "lib/images/hotel5.jpg",
        image1: "lib/images/hotel6.png",
        image2: "lib/images/hotel7.png",
        image3: "lib/images/hotel8.png",
        description:
            "Immerse yourself in the beauty of Rome at Hotel EFG, located near iconic landmarks.",
        rate: "4.4",
        aboutUs:
            "Hotel EFG combines classic elegance with modern comforts, offering a memorable stay for all guests.",
      ),
      Hotel(
        name: "Hotel JKL",
        city: "Sydney",
        price: 230.0,
        imageUrl: "lib/images/hotel6.png",
        image1: "lib/images/hotel7.png",
        image2: "lib/images/hotel8.png",
        image3: "lib/images/hotel9.jpg",
        description:
            "Experience the vibrant energy of Sydney at Hotel JKL, located near famous attractions.",
        rate: "4.6",
        aboutUs:
            "Hotel JKL offers comfortable accommodations and personalized services to ensure a delightful stay.",
      ),
      Hotel(
        name: "Hotel DEF",
        city: "Berlin",
        price: 170.0,
        imageUrl: "lib/images/hotel7.png",
        image1: "lib/images/hotel8.png",
        image2: "lib/images/hotel9.jpg",
        image3: "lib/images/hotel10.jpg",
        description:
            "Discover the rich history and culture of Berlin at Hotel DEF, nestled in a prime location.",
        rate: "4.3",
        aboutUs:
            "Hotel DEF provides comfortable rooms, attentive service, and a memorable experience for every guest.",
      ),
      Hotel(
        name: "Hotel GHI",
        city: "Barcelona",
        price: 160.0,
        imageUrl: "lib/images/hotel8.png",
        image1: "lib/images/hotel9.jpg",
        image2: "lib/images/hotel10.jpg",
        image3: "lib/images/hotel20.jpg",
        description:
            "Experience the vibrant spirit of Barcelona at Hotel GHI, located in the heart of the city.",
        rate: "4.7",
        aboutUs:
            "Hotel GHI offers modern accommodations, stunning views, and a warm Mediterranean hospitality.",
      ),
      Hotel(
        name: "Hotel LMN",
        city: "Amsterdam",
        price: 180.0,
        imageUrl: "lib/images/hotel9.jpg",
        image1: "lib/images/hotel10.jpg",
        image2: "lib/images/hotel20.jpg",
        image3: "lib/images/hotel12.jpg",
        description:
            "Explore the charming canals and historic landmarks of Amsterdam from Hotel LMN.",
        rate: "4.5",
        aboutUs:
            "Hotel LMN offers stylish rooms, personalized service, and a convenient location for both leisure and business travelers.",
      ),
      Hotel(
        name: "Hotel OPQ",
        city: "Vienna",
        price: 210.0,
        imageUrl: "lib/images/hotel10.jpg",
        image1: "lib/images/hotel20.jpg",
        image2: "lib/images/hotel12.jpg",
        image3: "lib/images/hotel12.jpg",
        description:
            "Indulge in the elegance and grandeur of Vienna at Hotel OPQ, situated near renowned attractions.",
        rate: "4.8",
        aboutUs:
            "Hotel OPQ offers luxurious accommodations, fine dining, and impeccable service for a truly memorable stay.",
      ),
      Hotel(
        name: "Hotel RST",
        city: "San Francisco",
        price: 190.0,
        imageUrl: "lib/images/hotel20.jpg",
        image1: "lib/images/hotel12.jpg",
        image2: "lib/images/hotel13.jpg",
        image3: "lib/images/hotel14.png",
        description:
            "Experience the beauty of San Francisco at Hotel RST, located near iconic landmarks.",
        rate: "4.4",
        aboutUs:
            "Hotel RST offers modern accommodations, exceptional amenities, and stunning views of the city skyline.",
      ),
      Hotel(
        name: "Hotel UVW",
        city: "Dubai",
        price: 250.0,
        imageUrl: "lib/images/hotel12.jpg",
        image1: "lib/images/hotel13.jpg",
        image2: "lib/images/hotel14.png",
        image3: "lib/images/hotel15.jpg",
        description:
            "Experience luxury and opulence at Hotel UVW, situated in the heart of Dubai's vibrant scene.",
        rate: "4.9",
        aboutUs:
            "Hotel UVW offers unparalleled service, lavish accommodations, and world-class facilities for an extraordinary stay.",
      ),
      Hotel(
        name: "Hotel STU",
        city: "Toronto",
        price: 170.0,
        imageUrl: "lib/images/hotel13.jpg",
        image1: "lib/images/hotel14.png",
        image2: "lib/images/hotel15.jpg",
        image3: "lib/images/hotel16.png",
        description:
            "Discover the vibrant city of Toronto from Hotel STU, located in the heart of downtown.",
        rate: "4.3",
        aboutUs:
            "Hotel STU offers comfortable and contemporary accommodations, exceptional dining options, and easy access to popular attractions.",
      ),
      Hotel(
        name: "Hotel VWX",
        city: "Prague",
        price: 190.0,
        imageUrl: "lib/images/hotel14.png",
        image1: "lib/images/hotel15.jpg",
        image2: "lib/images/hotel16.png",
        image3: "lib/images/hotel17.jpg",
        description:
            "Immerse yourself in the charm and history of Prague at Hotel VWX, nestled in a picturesque location.",
        rate: "4.6",
        aboutUs:
            "Hotel VWX offers elegant rooms, attentive service, and a delightful experience for every guest.",
      ),
      Hotel(
        name: "Hotel YZA",
        city: "Marrakech",
        price: 220.0,
        imageUrl: "lib/images/hotel15.jpg",
        image1: "lib/images/hotel16.png",
        image2: "lib/images/hotel17.jpg",
        image3: "lib/images/hotel18.jpeg",
        description:
            "Escape to the exotic beauty of Marrakech at Hotel YZA, a tranquil oasis in the vibrant city.",
        rate: "4.5",
        aboutUs:
            "Hotel YZA offers luxurious accommodations, traditional Moroccan hospitality, and a serene atmosphere for relaxation.",
      ),
      Hotel(
        name: "Hotel BCD",
        city: "Cape Town",
        price: 180.0,
        imageUrl: "lib/images/hotel16.png",
        image1: "lib/images/hotel17.jpg",
        image2: "lib/images/hotel18.jpeg",
        image3: "lib/images/hotel19.jpeg",
        description:
            "Experience the breathtaking beauty of Cape Town from Hotel BCD, nestled near stunning beaches.",
        rate: "4.8",
        aboutUs:
            "Hotel BCD offers luxurious accommodations, impeccable service, and panoramic views of the city and Table Mountain.",
      ),
    ];
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Booking Page")),
      body: SafeArea(
          child: SizedBox(
        width: width,
        height: height,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: allHotels.length,
          itemBuilder: (BuildContext context, int index) {
            return ChangeNotifierProvider<FavoritesProvider>(
              create: (_) => FavoritesProvider(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return DetailPage(
                          hotel: allHotels[index],
                        );
                      },
                    ));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepPurple,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(allHotels[index].imageUrl),
                      ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(
                            text: allHotels[index].name,
                            color: Colors.white,
                            font: FontWeight.w600,
                          ),
                          ExtraSmallText(
                            text: allHotels[index].city,
                            color: Colors.white,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ExtraSmallText(
                                    text: '\$${allHotels[index].price}',
                                    font: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                  const ExtraSmallText(
                                    text: "/night",
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    CupertinoIcons.star_fill,
                                    color: Colors.yellow,
                                  ),
                                  SmallText(text: allHotels[index].rate)
                                ],
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ),
            );
          },
        ),
      )),
    );
  }
}
