import 'package:fashion_app/detay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const FashionApp());
}

class FashionApp extends StatelessWidget {
  const FashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController = TabController(length: 4, vsync: this);
    //Belleğin tekrar sisteme aktarılması için tabController kullanıldıktan sonra dispose edildi.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: TabBar(controller: tabController, tabs: const [
          Tab(
            icon: Icon(
              Icons.home,
              color: Colors.pinkAccent,
              size: 30,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.search,
              color: Colors.pinkAccent,
              size: 30,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.add,
              color: Colors.pinkAccent,
              size: 30,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.account_circle,
              color: Colors.pinkAccent,
              size: 30,
            ),
          ),
        ]),
      ),
      appBar: AppBar(
        actions: <Widget>[ 
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.grey,
              ))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Fashion App",
          style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 3),
        children: <Widget>[
          Container(
            //AppBar'ın altındaki moda profilleri
            padding: const EdgeInsets.all(10),
            height: 140,
            width: double.infinity,
            child: ListView(
              scrollDirection:
                  Axis.horizontal, //yatayda scroll edilebilmesi için.
              children: <Widget>[
                listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                const SizedBox(
                  width: 30,
                ),
                listeElemani("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                const SizedBox(
                  width: 30,
                ),
                listeElemani("assets/model3.jpeg", "assets/chloelogo.png"),
                const SizedBox(
                  width: 30,
                ),
                listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                const SizedBox(
                  width: 30,
                ),
                listeElemani("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                const SizedBox(
                  width: 30,
                ),
                listeElemani("assets/model3.jpeg", "assets/chloelogo.png"),
              ],
            ),
          ),

          //Card başlangıcı
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 12,
              //color: Colors.teal.shade300,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage("assets/model1.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          //Tablet gibi diğer aygıtlar için genişliğin adapte olabilmesi için MediaQuery kullanıldı.
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "28 mins ago",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 13,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(
                          Icons.more_vert_sharp,
                          color: Colors.grey,
                          size: 22,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temperament and recommend to friends.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (context) =>
                                    Detay(imgPath: "assets/modelgrid1.jpeg")));
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Material(
                              borderRadius: BorderRadius.circular(10),
                              elevation: 6,
                              child: Container(
                                height: 200,
                                width:
                                    (MediaQuery.of(context).size.width - 50) *
                                        0.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid1.jpeg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(CupertinoPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: "assets/modelgrid2.jpeg")));
                              },
                              child: Hero(
                                tag: "assets/modelgrid2.jpeg",
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  elevation: 4,
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) *
                                        0.5,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/modelgrid2.jpeg"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(CupertinoPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: "assets/modelgrid3.jpeg")));
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Material(
                                  elevation: 5,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) *
                                        0.5,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/modelgrid3.jpeg"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: const Center(
                            child: Text(
                              "#LouisVuitton",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pinkAccent),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: const Center(
                            child: Text(
                              "#Chloe",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pinkAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.reply,
                          color: Colors.grey,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "1.7k",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Icon(
                          Icons.chat_bubble,
                          color: Colors.grey,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "328",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        //
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 235,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.red.shade900,
                                size: 30,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "2.3k",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  listeElemani(String resimYolu, String logoYolu) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(
                        resimYolu,
                      ),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(logoYolu), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.pink),
          child: const Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
