import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 163, 17, 7),
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/icons/Movielix_icon.png',
                      width: 60,
                      height: 60,
                    ),
                    const Text(
                      "Movielix",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                width: 200,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Search here ...",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white70),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // MOVIE POPULER
            Container(
              margin: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
              child: const Text(
                "Movie Populer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                viewportFraction: 0.8,
              ),
              items: [
                'https://image.api.playstation.com/vulcan/ap/rnd/202011/0402/AcjaXqwZzggGiKLFdEfHMp0H.png',
                'https://d1tgyzt3mf06m9.cloudfront.net/v3-staging/2022/04/serial-film-marvel-harus-ditonton-sebelum-doctor-strange-in-the-multiverse-of-madness922e93c2-632d-41ed-b863-7db3986eeb8d.jpg',
                'https://www.techoffside.com/wp-content/uploads/2024/05/01-HBO-GO-Dune-Part-Two.jpg',
                'https://static.promediateknologi.id/crop/0x375:1634x1658/750x500/webp/photo/p2/01/2024/01/10/Poster-film-13-bom-di-jakarta-702325560.jpg',
                'https://m.media-amazon.com/images/M/MV5BMTY5YjI1NmYtM2IwMy00MGYwLWFiMmQtZjAyZDM5ZjNhMzNjXkEyXkFqcGdeQXVyMTAyNDYyNzcw._V1_.jpg'
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        i,
                        width: 350,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            // GENRE FILTER
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "Genre",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GenreButton(label: "Horror"),
                  GenreButton(label: "Action"),
                  GenreButton(label: "Romance"),
                  GenreButton(label: "Thriller"),
                  GenreButton(label: "Comedy"),
                  GenreButton(label: "Fantasy"),
                  GenreButton(label: "Advanture"),
                ],
              ),
            ),
            // KOREAN TV DRAMA
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "Korean TV Drama",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            CarouselSlider(
              options: CarouselOptions(
                height: 100.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                viewportFraction: 0.33,
              ),
              items: [
                'https://asianwiki.com/images/c/c8/Itaewon_Class-mp1.jpg',
                'https://post.app/wp-content/uploads/2020/11/BLOG_POST_START-UP-K-DRAMA_23-11-2020.jpg',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx6vWxuYRFLTd-gAENuvGHvkWzBUShUEYYLw&s',
                'https://kenh14cdn.com/203336854389633024/2024/4/8/photo-6-1712588555433325474239.jpg',
                'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/127/2023/11/06/FotoJet91-3519685924.jpg'
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        i,
                        width: 350,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            // SINETRON INDO
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "Sinetron Indonesia",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              // Gunakan Expanded agar ListView dapat menyesuaikan tinggi
              child: ListView.builder(
                scrollDirection: Axis.vertical, // Scroll vertikal
                itemCount: 5, // Jumlah 
                itemBuilder: (context, index) {
                  List<String> imageUrls = [
                    'https://asianwiki.com/images/c/c8/Itaewon_Class-mp1.jpg',
                    'https://post.app/wp-content/uploads/2020/11/BLOG_POST_START-UP-K-DRAMA_23-11-2020.jpg',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx6vWxuYRFLTd-gAENuvGHvkWzBUShUEYYLw&s',
                    'https://kenh14cdn.com/203336854389633024/2024/4/8/photo-6-1712588555433325474239.jpg',
                    'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/127/2023/11/06/FotoJet91-3519685924.jpg'
                  ];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0), // Tambahkan padding antar item
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        imageUrls[index],
                        width: 350,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // NAVIGATION BAR
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.pink,
            ),
            label: "Whislist",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class GenreButton extends StatelessWidget {
  final String label;

  const GenreButton({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: ElevatedButton(
        onPressed: () {
          // Implementasi aksi tombol genre
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            minimumSize: const Size(10, 10)),
        child: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
