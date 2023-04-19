import 'package:flutter/material.dart';
import 'package:yemekrehberison/search.dart';
import 'package:yemekrehberison/tarifdetay.dart';
import 'package:yemekrehberison/tarifler.dart';

class Favoriler extends StatefulWidget {
  const Favoriler({Key? key}) : super(key: key);

  @override
  State<Favoriler> createState() => _FavorilerState();
}

class _FavorilerState extends State<Favoriler> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          arama(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => tarifdetay()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: tarifler(
                          "30 Dakika",
                          "Patatesli Sulu Köfte",
                          'Köfte malzemelerini karıştırın ve köfteleri yuvarlayın. '
                              'Patatesleri küp küp doğrayın. Tencereye suyu ve salçayı koyup karıştırın. '
                              'Köfteleri ve patatesleri de ekleyin. Kısık ateşte pişirin. Afiyet olsun!',
                          "4 Beğeni",
                          "1 Yorum",
                          'https://media.discordapp.net/attachments/1094923419155435543/1095417542882893824/alierc4n_recipe_image_2741f448-e6cb-46f1-9cc4-d36214779239.png?width=936&height=936',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
