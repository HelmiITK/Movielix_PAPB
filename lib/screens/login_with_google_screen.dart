import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWithGoogle extends StatefulWidget {
  const LoginWithGoogle({super.key});

  @override
  State<LoginWithGoogle> createState() => _LoginWithGoogleState();
}

class _LoginWithGoogleState extends State<LoginWithGoogle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/Login_Screen.png",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Positioned(
              bottom: 50,
              left: 10,
              right: 10,
              child: Card(
                color: Colors.black.withOpacity(0.5),
                elevation: 3.0,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 17,
                        right: 17,
                        top: 17,
                        bottom: 10,
                      ),
                      child: Text(
                        "Bioskop Online Terbaik !",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 17,
                        right: 17,
                        bottom: 17,
                      ),
                      child: Text(
                        "Halooo mau nonton yang seru-seru, login dulu yuk bentar doang ko 🤩",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 17,
                        right: 17,
                        bottom: 20,
                      ),
                      child: Card(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(3.0)),
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/icon_google.png",
                                  width: 30,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "Login Sekarang",
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Create Account
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            top: 2,
                            bottom: 16,
                          ),
                          child: InkWell(
                            onTap: () => {
                              Navigator.pushReplacementNamed(
                                  context, '/register')
                            },
                            child: Text(
                              "Create Account",
                              style: GoogleFonts.poppins(
                                color: Colors.amber,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),

                        // Have Account
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 20,
                            top: 2,
                            bottom: 16,
                          ),
                          child: InkWell(
                            onTap: () => {
                              Navigator.pushReplacementNamed(
                                  context, '/login_account')
                            },
                            child: Text(
                              "Have Account",
                              style: GoogleFonts.poppins(
                                color: Colors.amber,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
