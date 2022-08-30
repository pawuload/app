import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const poweredBy = 'powered by ';
    const utopia = 'utopia.';
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              poweredBy,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Axiforma-ThinItalic',
              ),
            ),
            Text(
              utopia,
              style: GoogleFonts.ubuntu(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
