import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailMovie extends StatefulWidget {
  const DetailMovie({super.key});

  @override
  State<DetailMovie> createState() => _DetailMovieState();
}

class _DetailMovieState extends State<DetailMovie> {
  bool isExpanded = false;

  final String fullDescription =
      "Interstellar merupakan film Amerika garapan sutradara Christopher Nolan dengan genre fiksi sains dan petualangan. Film yang dirilis pada tahun 2014 ini menceritakan tentang Cooper dan anggota tim lainnya dari NASA yang menjalankan misi rahasia untuk mencari planet baru karena bumi sudah tidak layak huni.";
  @override
  Widget build(BuildContext context) {
    List<String> words = fullDescription.split(' ');

    String displayedText =
        isExpanded ? fullDescription : '${words.take(25).join(' ')}...';

    final List<Map<String, String>> castData = [
      {
        "name": "Matthew McConaughey",
        "imageUrl":
            "https://img.a.transfermarkt.technology/portrait/big/94540-1636851420.jpg?lm=1", // Ganti dengan URL asli foto
      },
      {
        "name": "Jessica Chastain",
        "imageUrl":
            "https://upload.wikimedia.org/wikipedia/commons/e/e6/Jessica_Chastain_Cannes_2016_4_%28cropped%29.jpg", // Ganti dengan URL asli foto
      },
      {
        "name": "Anne Hathaway",
        "imageUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLoG1gBPLv_0Y5cR69tnKAGD4YjA2l4hv6AA&s", // Ganti dengan URL asli foto
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 17, 0),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // IconButton(
            //   icon: const Icon(Icons.arrow_back,
            //       color: Color.fromARGB(255, 255, 17, 0)),
            //   onPressed: () {},
            // ),
            Expanded(
              child: Center(
                child: Text(
                  'Detail',
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 255, 17, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border,
                  color: Color.fromARGB(255, 255, 17, 0)),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Movie
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 12,
                right: 12,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  "https://static.wixstatic.com/media/2b11c5_6f224834a727487a86473674ce8c1501~mv2.jpg/v1/fill/w_528,h_298,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/2b11c5_6f224834a727487a86473674ce8c1501~mv2.jpg",
                  fit: BoxFit.cover,
                  height: 230,
                  width: double.infinity,
                ),
              ),
            ),
            // konten detail
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Interstellar",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.grey,
                              size: 20,
                            ),
                            SizedBox(width: 5), // Spasi antara ikon dan teks
                            Text(
                              "2014-09-06",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 17, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                              ),
                              child: const Text(
                                'Sci-Fi',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 17, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                              ),
                              child: const Text(
                                'Action',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 17, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                              ),
                              child: const Text(
                                'Drama',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 1),
                  const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.amber,
                          size: 30,
                        ),
                        SizedBox(width: 2),
                        Text(
                          "4.8",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 2),
                        Text(
                          "(230)",
                          style: TextStyle(
                            color: Color.fromARGB(255, 190, 190, 190),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.red),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text.rich(
                      TextSpan(
                        text: displayedText,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          height: 1.5,
                        ),
                        children: [
                          TextSpan(
                            text: isExpanded ? " Read Some" : " Read More",
                            style: const TextStyle(
                              color: Color.fromARGB(255, 255, 17, 0),
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                setState(() {
                                  isExpanded = !isExpanded;
                                });
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Cast",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: castData.map((cast) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: SizedBox(
                            width: 100,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(8.0),
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                  color: Color.fromARGB(228, 255, 0, 0),
                                  width: 1,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              child: Column(
                                children: [
                                  // Menampilkan foto pemeran
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.network(
                                      cast['imageUrl']!,
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  // Menampilkan nama pemeran
                                  Text(
                                    cast['name']!,
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/trailer_movie',
                    arguments: castData,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 17, 0),
                  padding: const EdgeInsets.symmetric(
                    vertical: 13,
                    horizontal: 80,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                icon: const Icon(
                  Icons.play_arrow_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                label: Text(
                  'Watch Trailer',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
