import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ScreenLoginWindows extends StatefulWidget {
  const ScreenLoginWindows({super.key});

  @override
  State<ScreenLoginWindows> createState() => _ScreenLoginWindowsState();
}

class _ScreenLoginWindowsState extends State<ScreenLoginWindows> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightMq = MediaQuery.of(context).size.height;
    final widthMq = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Stack(
          children: [
            Stack(
              children: [
                TopClip(
                  size: size,
                  height: 140,
                  color: const Color(0xFFB4CEF3),
                  clipper: WaveClipperOne(),
                ),
                TopClip(
                  size: size,
                  height: 120,
                  color: const Color(0xFFECEFFF),
                  clipper: WaveClipperTwo(),
                ),
                BottomClip(
                  size: size,
                  height: 130,
                  color: const Color(0xFFECEFFF),
                  clipper: WaveClipperOne(reverse: true),
                ),
                BottomClip(
                  size: size,
                  height: 120,
                  color: const Color(0xFFB4CEF3),
                  clipper: WaveClipperTwo(reverse: true),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: heightMq / 2.5,
                    width: widthMq / 2.3,
                    child: Lottie.asset(
                      'assets/lottie_files/login_lottie.json',
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding:
                    EdgeInsets.only(right: widthMq / 12, top: heightMq / 20),
                child: SizedBox(
                  height: heightMq / 2,
                  width: widthMq / 4,
                  child: Column(
                    children: [
                      Text(
                        'LOGIN',
                        style: GoogleFonts.poppins(
                            fontSize: 27, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: heightMq / 30),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          hintText: 'Enter your username',
                          hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffa0a6b9),
                          ),
                          label: Text(
                            'Username',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: const Color(
                                0xff5570F1,
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: heightMq / 37),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_rounded),
                          suffixIcon: const Icon(Icons.visibility_off),
                          hintText: 'Enter your password',
                          hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffa0a6b9),
                          ),
                          label: Text(
                            'Password',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: const Color(
                                0xff5570F1,
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Password must be at least ',
                              style: GoogleFonts.inder(
                                  fontSize: 12, color: Colors.grey),
                            ),
                            TextSpan(
                                text: '8 Characters',
                                style: GoogleFonts.inder(
                                  color: Colors.green[800],
                                  fontSize: 12,
                                )),
                            TextSpan(
                              text: 'and must contain at least a',
                              style: GoogleFonts.inder(
                                  fontSize: 12, color: Colors.grey),
                            ),
                            TextSpan(
                                text: ' Capital Letter,',
                                style: GoogleFonts.inder(
                                  color: Colors.green[800],
                                  fontSize: 12,
                                )),
                            TextSpan(
                                text: ' a Number ',
                                style: GoogleFonts.inder(
                                  color: Colors.black,
                                  fontSize: 12,
                                )),
                            TextSpan(
                              text: ' and a ',
                              style: GoogleFonts.inder(
                                  fontSize: 12, color: Colors.grey),
                            ),
                            TextSpan(
                              text: 'Special Character',
                              style: GoogleFonts.inder(
                                  fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                          const Text('Remember Me'),
                          const Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgot Password ?',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.normal),
                              ))
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: widthMq / 6,
                        height: heightMq / 22,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2C82FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class TopClip extends StatelessWidget {
  const TopClip({
    super.key,
    required this.size,
    required this.height,
    required this.color,
    this.clipper,
  });

  final Size size;
  final double height;
  final Color? color;
  final CustomClipper<Path>? clipper;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: Container(
        height: height,
        width: size.width,
        color: color,
      ),
    );
  }
}

class BottomClip extends StatelessWidget {
  const BottomClip({
    super.key,
    required this.size,
    required this.height,
    this.color,
    this.clipper,
  });

  final Size size;
  final double height;
  final Color? color;
  final CustomClipper<Path>? clipper;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        child: ClipPath(
          clipper: clipper,
          child: Container(
            height: height,
            width: size.width,
            color: color,
          ),
        ));
  }
}
