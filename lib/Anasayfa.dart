// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, body_might_complete_normally_nullable, avoid_print, unnecessary_string_interpolations

import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var uygulamalar = ["Bizim Ajanda/Takvim", "Kaça Gider", "Verimli Bildirim"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Anasayfa",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        actions: [
          PopupMenuButton(
              icon: Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text("Daha Fazla Bilgi"),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text("Yardım"),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text("Yapay Zeka"),
                    ),
                  ])
        ],
      ),
      body: SizedBox(
        child: GridView.builder(
            itemCount: uygulamalar.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 2 / 1),
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            print("${uygulamalar[index]} clicked.");
                          },
                          child: Text("${uygulamalar[index]}")),
                      Spacer(),
                      PopupMenuButton(
                          icon: Icon(Icons.chevron_right),
                          itemBuilder: (context) => [
                                PopupMenuItem(value: 1, child: Text("Choose")),
                                PopupMenuItem(value: 2, child: Text("Info"))
                              ])
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
