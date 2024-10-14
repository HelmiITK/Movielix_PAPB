import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movielixfix/components/bottom_navigation_bar_widget.dart';
import 'package:movielixfix/components/custom_app_bar_widget.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  int _selectedIndex = 1;

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

  final List<Map<String, String>> wishlistMovies = [
    {
      'title': 'Inception',
      'genre': 'Sci-Fi',
      'imageUrl':
          'https://play-lh.googleusercontent.com/buKf27Hxendp3tLNpNtP3E-amP0o4yYV-SGKyS2u-Y3GdGRTyfNCIT5WAVs2OudOz6so5K1jtYdAUKI9nw8',
    },
    {
      'title': 'Interstellar',
      'genre': 'Sci-Fi',
      'imageUrl':
          'https://static.wixstatic.com/media/2b11c5_6f224834a727487a86473674ce8c1501~mv2.jpg/v1/fill/w_528,h_298,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/2b11c5_6f224834a727487a86473674ce8c1501~mv2.jpg',
    },
    {
      'title': 'The Dark Knight Rises Beyond the Shadows',
      'genre': 'Action',
      'imageUrl':
          'https://m.media-amazon.com/images/S/pv-target-images/fd2a62ebf8534a10465dfc63ea11635bd42ed1692ad3af11d5e83ab553e3d0ae._SX1080_FMjpg_.jpg',
    },
    {
      'title': 'Parasite',
      'genre': 'Thriller',
      'imageUrl':
          'https://studio.mrngroup.co/storage/app/media/Prambors/Editorial/PARASITE-20210212024041.jpg?tr=w-600',
    },
    {
      'title': 'Joker',
      'genre': 'Drama',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdKs_rfXWTh248LuX3thc7O-7ZXdrw2UBxZw&s',
    },
    {
      'title': 'Avengers: Endgame',
      'genre': 'Action',
      'imageUrl':
          'https://suaramahasiswa.info/wp-content/uploads/2019/04/Avengers-Endgame.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                heightFactor: 1.7,
                child: Text(
                  "My Wishlist ",
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 218, 24, 10),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 cards per row
                  childAspectRatio: 0.7, // Adjust the height of each card
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: wishlistMovies.length,
                itemBuilder: (context, index) {
                  final movie = wishlistMovies[index];
                  return Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 255, 17, 0),
                        width: 0.3,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(10.0)),
                          child: Image.network(
                            movie['imageUrl']!,
                            fit: BoxFit.cover,
                            height: 120,
                            width: double.infinity,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  movie['title']!,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    backgroundColor: Colors.grey[900],
                                    title: Text(
                                      movie['title']!,
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    content: Text(
                                      'More information about "${movie['title']}".',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white70,
                                      ),
                                    ),
                                    actions: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(
                                                  context); // Tutup dialog sebelum berpindah halaman
                                              Navigator.pushNamed(
                                                context,
                                                '/detail_movie',
                                                arguments:
                                                    movie, // Mengirim data movie ke halaman detail
                                              );
                                            },
                                            child: const Text(
                                              'Detail',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text(
                                              'Close',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                              icon: Container(
                                decoration: ShapeDecoration(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Colors.red,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.info_outline,
                                  size: 22,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            movie['genre']!,
                            style: GoogleFonts.poppins(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton.icon(
                                onPressed: () {
                                  // Navigasi ke halaman 'Watch' dengan parameter
                                  Navigator.pushNamed(
                                    context,
                                    '/trailer_movie',
                                    arguments: movie,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Color.fromARGB(255, 255, 17, 0),
                                      width: 1.5,
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 14,
                                  ),
                                  minimumSize: const Size(10, 10),
                                ),
                                icon: const Icon(
                                  Icons.play_arrow,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'Watch',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onTap,
      ),
    );
  }
}
