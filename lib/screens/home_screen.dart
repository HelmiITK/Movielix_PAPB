import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movielixfix/components/custom_app_bar_widget.dart';
import 'package:movielixfix/components/bottom_navigation_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int itemsToShow = 5;
  bool showAll = false;
  List<String> imageUrlsHorror = [
    'https://cdn1-production-images-kly.akamaized.net/CfG5YvE5rrLlkLCGtdyRSKYhUWA=/800x450/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/38122/original/the-conjuring-130729b.jpg',
    'https://montasefilm.com/wp-content/uploads/2021/06/946346-h.jpg',
    'https://images.bisnis.com/posts/2024/10/05/1805135/jadwal_film_kuasa_gelap_di_bioskop_1728139951.jpg',
    'https://i.ytimg.com/vi/XY7falovJiI/maxresdefault.jpg',
    'https://thumbor.prod.vidiocdn.com/GEScqrxjbielTjEiQy22QLpvuyE=/640x360/filters:quality(75)/vidio-web-prod-video/uploads/video/image/8188423/ep-01-kena-gigi-uang-kembali-7be194.jpg',
    'https://www.screengeek.net/wp-content/uploads/2018/11/annabelle-3.jpg',
    'https://film-authority.com/wp-content/uploads/2023/07/insidious-the-red-door-2023-ending-explained-64a7c098e40e153535670-900-e1689066995159.webp',
    'https://kilasjatim.com/wp-content/uploads/2023/09/film-the-nun-2.jpg',
  ];

  List<String> imageUrlsAction = [
    'https://cdn1-production-images-kly.akamaized.net/CfG5YvE5rrLlkLCGtdyRSKYhUWA=/800x450/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/38122/original/the-conjuring-130729b.jpg',
    'https://montasefilm.com/wp-content/uploads/2021/06/946346-h.jpg',
    'https://images.bisnis.com/posts/2024/10/05/1805135/jadwal_film_kuasa_gelap_di_bioskop_1728139951.jpg',
    'https://i.ytimg.com/vi/XY7falovJiI/maxresdefault.jpg',
    'https://thumbor.prod.vidiocdn.com/GEScqrxjbielTjEiQy22QLpvuyE=/640x360/filters:quality(75)/vidio-web-prod-video/uploads/video/image/8188423/ep-01-kena-gigi-uang-kembali-7be194.jpg',
    'https://www.screengeek.net/wp-content/uploads/2018/11/annabelle-3.jpg',
    'https://film-authority.com/wp-content/uploads/2023/07/insidious-the-red-door-2023-ending-explained-64a7c098e40e153535670-900-e1689066995159.webp',
    'https://kilasjatim.com/wp-content/uploads/2023/09/film-the-nun-2.jpg',
  ];

  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigasi ke halaman yang sesuai berdasarkan index
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/wishlist');
        break;
      case 2:
        Navigator.pushNamed(context, '/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // MOVIE POPULER
              Container(
                margin:
                    const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 8.0),
                child: Text(
                  "Movie Populer",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
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
              const SizedBox(height: 10),

              // Button Filter by Genre
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Genre",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
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
              const SizedBox(height: 10),

              // Korean TV Drama
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Korean TV Drama",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
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
              const SizedBox(height: 10),

              // Menampilkan berdasarkan opsi genre yang dipilih nantinya
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  'Genre "Horror"',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              ListView.builder(
                shrinkWrap: true, // Untuk menyesuaikan tinggi dalam scrollview
                physics:
                    const NeverScrollableScrollPhysics(), // Tidak membuat listview scrollable secara independen
                itemCount: itemsToShow,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(
                      bottom: 20.0,
                      right: 10,
                      left: 10,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        imageUrlsHorror[index],
                        width: double.infinity,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              // Opsi See All by Genre
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (showAll) {
                        // Jika semua sudah ditampilkan, kembali ke tampilan awal (5 item)
                        itemsToShow = 5;
                        showAll = false;
                      } else {
                        // Tampilkan semua item
                        itemsToShow = imageUrlsHorror.length;
                        showAll = true;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[900],
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                  child: Text(
                    showAll ? "See Some" : "See All",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // NAVIGATION BAR
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onTap,
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
          backgroundColor: Colors.red[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          minimumSize: const Size(10, 10),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
