import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatelessWidget {
  final aboutUs =
      'Estamos aqui pra ser a sua voz dentro da universidade e pra te ajudar com quaisquer assuntos que estejam em nosso alcance. E por aqui, pode nos chamar que ficaremos felizes em falar com você e manter nosso engajamento com a nossa galera!';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sobre nós"),
          backgroundColor: Colors.black,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/imgs/CASI_2.jpg'),
            ),
          ),
          child: Container(
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                aboutUs,
                style: GoogleFonts.getFont('Lato', fontSize: 17),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
