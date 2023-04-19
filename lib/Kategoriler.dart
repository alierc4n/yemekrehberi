import 'package:flutter/material.dart';
import 'package:yemekrehberison/search.dart';

class Kategoriler extends StatefulWidget {
  const Kategoriler({Key? key}) : super(key: key);

  @override
  State<Kategoriler> createState() => _KategorilerState();
}

class _KategorilerState extends State<Kategoriler> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              arama(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        kategoricontainer(
                          imageUrl:
                              "https://media.discordapp.net/attachments/1094923419155435543/1095431183975862362/alierc4n_breakfast_recipe_image_2f6b4079-fef0-4613-a88b-a95edf776bce.png?width=936&height=936",
                          text: "Kahvaltı",
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: kategoricontainer(
                            imageUrl:
                                "https://media.discordapp.net/attachments/1094923419155435543/1095431202854408202/alierc4n_Snacks__Snacks_recipe_image_93fce220-8f00-4e89-92ad-134602ef6681.png?width=936&height=936",
                            text: "Aperatifler & Atıştırmalıklar",
                          ),
                        ),
                        kategoricontainer(
                          imageUrl:
                              "https://media.discordapp.net/attachments/1094923419155435543/1095431221745561640/alierc4n_Main_Dishes_recipe_image_bf166ca1-4eb5-4fce-9bc7-85fb8ecd3c39.png?width=936&height=936",
                          text: "Ana Yemekler",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        kategoricontainer(
                          imageUrl:
                              "https://media.discordapp.net/attachments/1094923419155435543/1095431254943477887/alierc4n_Vegetarian__Vegan_recipe_image_f4568d72-b029-47d1-a902-ce9beea20ae8.png?width=936&height=936",
                          text: "Vejetaryen & Vegan",
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, left: 15.0),
                          child: kategoricontainer(
                            imageUrl:
                                "https://media.discordapp.net/attachments/1094923419155435543/1095431269346709637/alierc4n_Desserts_recipe_image_fbb8ef1d-4b0f-478b-beac-381da373f56b.png?width=936&height=936",
                            text: "Tatlılar",
                          ),
                        ),
                        kategoricontainer(
                          imageUrl:
                              "https://iasbh.tmgrup.com.tr/1d8961/754/640/268/0/1254/835?u=https://isbh.tmgrup.com.tr/sbh/2022/08/20/yaz-sicaklarinin-vazgecilmezi-sekersiz-limonata-tarifi-1660978035376.jpg",
                          text: "İçecekler",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Kahvaltı',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: kategoributon(
                            kategorirenk:Colors.amber,
                            kategoriisim: "Omletler"),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.amber,
                              kategoriisim: "Yulaf Tarifleri")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.amber,
                              kategoriisim: "Kahvaltılıklar")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.amber,
                              kategoriisim: "Smoothie'ler")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.amber,
                              kategoriisim: "Gözlemeler")),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Aperatifler & Atıştırmalıklar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: kategoributon(
                            kategorirenk: Colors.redAccent,
                            kategoriisim: "Mezeler"),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.redAccent,
                              kategoriisim: "Salatalar")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.redAccent,
                              kategoriisim: "Sandviçler")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.redAccent,
                              kategoriisim: "Çorbalar")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.redAccent,
                              kategoriisim: "Kanepe Tarifleri")),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Ana Yemekler',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: kategoributon(
                            kategorirenk: Colors.lightBlueAccent,
                            kategoriisim: "Et Yemekleri"),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.lightBlueAccent,
                              kategoriisim: "Tavuk Yemekleri")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.lightBlueAccent,
                              kategoriisim: "Balık ve Deniz Ürünleri")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.lightBlueAccent,
                              kategoriisim: "Sebze Yemekleri")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.lightBlueAccent,
                              kategoriisim: "Baklagil Yemekleri")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.lightBlueAccent,
                              kategoriisim: "Pilav ve Makarnalar")),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Vejetaryen & Vegan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: kategoributon(
                            kategorirenk: Colors.green,
                            kategoriisim: "Vegan Ana Yemekleri"),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.green,
                              kategoriisim: "Vegan Atıştırmalıklar")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.green,
                              kategoriisim: "Vejeteryan Ana Yemekler")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.green,
                              kategoriisim: "Vejeteryan Atıştırmalıklar")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.green,
                              kategoriisim: "Glütensiz Tarifler")),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tatlılar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: kategoributon(
                            kategorirenk: Colors.brown,
                            kategoriisim: "Kekler ve Kurabiyeler"),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk:Colors.brown,
                              kategoriisim: "Pastalar")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.brown,
                              kategoriisim: "Sütlü Tatlılar")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.brown,
                              kategoriisim: "Şerbetli Tatlılar")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.brown,
                              kategoriisim: "Meyve İçerikli Tatlılar")),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'İçecekler',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: kategoributon(
                            kategorirenk: Colors.purple,
                            kategoriisim: "Sıcak İçecekler"),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.purple,
                              kategoriisim: "Soğuk İçecekler")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.purple,
                              kategoriisim: "Kokteyller")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.purple,
                              kategoriisim: "Şerbetler ve Kompostolar")),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: kategoributon(
                              kategorirenk: Colors.purple,
                              kategoriisim: "Smoothie'ler")),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class kategoricontainer extends StatefulWidget {
  final String imageUrl;
  final String text;

  const kategoricontainer({
    Key? key,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  @override
  State<kategoricontainer> createState() => _kategoricontainerState();
}

class _kategoricontainerState extends State<kategoricontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                widget.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 31.25, // %25 of 125
                color: Colors.white,
                child: Center(
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class kategoributon extends StatefulWidget {
  final Color kategorirenk;
  final String kategoriisim;

  const kategoributon({
    Key? key,
    required this.kategorirenk,
    required this.kategoriisim,
  }) : super(key: key);

  @override
  State<kategoributon> createState() => _kategoributonState();
}

class _kategoributonState extends State<kategoributon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: widget.kategorirenk,
            ),
          ),
          SizedBox(width: 10),
          Text(
            widget.kategoriisim,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
