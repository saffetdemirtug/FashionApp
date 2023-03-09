
import 'package:fashion_app/main.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Detay extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  late var imgPath;
  Detay({this.imgPath, super.key});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 19,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: MediaQuery.of(context).size.height / 2.99,
                width: MediaQuery.of(context).size.width * 0.95,
                child: SingleChildScrollView(
                  //Yatay ekrana geçildiğindeki taşma sorunu için scroll özelliği kazandırıldı.
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 15),
                            child: Material(
                              elevation: 11,
                              child: Container(
                                height: 120,
                                width: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1.8),
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        image: AssetImage("assets/dress.jpg"),
                                        fit: BoxFit.contain)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "LAMINATED",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 22,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "Louis Vuitton",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 17,
                                          color: Colors.pink,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Material(
                                      elevation: 7,
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/louisvuitton.jpg"),
                                                fit: BoxFit.contain)),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                const Text(
                                  "One button V-neck sling long-\nsleeved waist female stitching dress",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 13.7,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "\$6500",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              width: 135,
                            ),
                            FloatingActionButton(
                              elevation: 7,
                              backgroundColor: Colors.pinkAccent,
                              onPressed: () {},
                              child: const Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              left: 30,
              top: 270,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop(const AnaSayfa());
                },
                child: Material(
                  elevation: 36,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(0.8),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            "LAMINATED",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 22,
                                color: Colors.pink.withOpacity(0.8),
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.arrow_right_sharp,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
