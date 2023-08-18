import 'package:flutter/material.dart';

// ignore: camel_case_types
class inform extends StatelessWidget {
  const inform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 204, 230, 244),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 75, 163, 195),
          title: const Text("Mi Tes"),
        ),
        // ignore: prefer_const_constructors
        body: Center(
          // ignore: prefer_const_constructors
          child: Column(
            children: [
              SizedBox(
                height: 250.0,
                width: 350.0,
                child: Image.network(
                    "https://prociegosysordos.org.gt/images/Educacion/ccomunicaciontotal/ct01.jpg"),
              ),
              const Text("Centro de Comunicación Total para Niños Sordos"),
              const Text(
                  "Psicología,Terapia de Lenguaje, Trabajo Social, Odontología, Escuela para Padres, Expresión Artística, Inglés, Kaqchikel, Expresión Artística (danza y teatro), Coro, Deportes (Atletismo, fútbol, básquetbol, voleibol, tenis de mesa, ajedrez),Talleres de Lenguaje de Señas para Padres de Familia, Aulas Abiertas"),
              SizedBox(
                height: 250.0,
                width: 350.0,
                child: Image.network(
                    "https://aprende.guatemala.com/wp-content/uploads/2020/06/benemerito-comite-prociegos-sordos-guatemala.jpg"),
              ),
              const Text("Benemérito Comité Pro Ciegos y Sordos de Guatemala"),
              const Text(
                  "es una institución privada y sin fines de lucro. Ofrece servicios médicos, educativos y de rehabilitación a los guatemaltecos, a través de sus diferentes planes de trabajo"),
            ],
          ),
        ));
  }
}
