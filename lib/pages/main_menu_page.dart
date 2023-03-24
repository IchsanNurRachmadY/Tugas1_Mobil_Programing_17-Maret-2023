import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';


class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard(
      String img,
      String name,
      String role,
    ) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: const Color(0xffFFFFFF)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(img
                          // "assets/img-doc1.png",

                          ))),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: const Color(0xff0D2841),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        role,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xff0D2841),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/ic_star.png",
                                ))),
                      ),
                      Text(
                        '4.8',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: const Color(0xff308CF8),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, \nIchsan Nur R Y!',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            color: const Color(0xff0D2841),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Stay Healthy with Our Spesialis Doctor',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: const Color(0xff9698A9),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 76,
                      height: 76,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/Mask group.png",
                              ))),
                    ),
                  ],
                ),
                  const SizedBox(
              height: 24,
            ),
                doctorCard("assets/img-doc1.png", "dr. Mawar N.",
                    "Spesialis Penyakit Dalam "),
                doctorCard("assets/img-doc2.png", "dr. Zizah Ayuningsih.",
                    "Spesialis Kulit Kelamin "),
                doctorCard("assets/Dokter_3.png", "dr. Khorerun Z.",
                    "Spesialis Penyakit Kulit "),
                doctorCard("assets/Dokter_4.png", "dr. Ayuningsih.",
                    "Spesialis Anak "),

                        GestureDetector(
                onTap: (){
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainMenuPage()),
                      );
                },
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 80),
                    padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(17)),
                    child: Text(
                      'View More',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: const Color(0xff0D2841),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
           
              ],
            ),
          ),
        ),
      ),
    );
  }
}