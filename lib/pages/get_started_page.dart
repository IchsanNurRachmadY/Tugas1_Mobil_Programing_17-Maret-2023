import 'package:google_fonts/google_fonts.dart';  
import 'package:flutter/material.dart';
import 'package:pert3slice/pages/main_menu_page.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> 
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/get-started.png",
                  ))),
        ),
        Container(
          height: 444,
          width: double.infinity,
           decoration:  BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.0)
              ],
            )),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 64,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Treat ',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: const Color(0xffFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                      Text(
                      'Patient ',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: const Color(0xff308CF8),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                      Text(
                      'Like A ',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: const Color(0xffFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                      Text(
                      'Queen',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: const Color(0xff308CF8),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Explore the best our services with\nprofessional specialist doctor',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xffFFFFFF),
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
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
                      'Get Started',
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
      ]),
  );
}
}