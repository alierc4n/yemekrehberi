import 'package:flutter/material.dart';
import 'package:yemekrehberison/onecikantarifler.dart';
import 'package:yemekrehberison/search.dart';
import 'package:yemekrehberison/tarifdetay.dart';
import 'package:yemekrehberison/tarifler.dart';

class anasayfaa extends StatefulWidget {
  const anasayfaa({Key? key}) : super(key: key);

  @override
  State<anasayfaa> createState() => _anasayfaaState();
}

class _anasayfaaState extends State<anasayfaa> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              arama(),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Öne Çıkan Tarifler',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      onecikantarifler(
                          resimUrl:
                          'https://media.discordapp.net/attachments/1094923419155435543/1095416003812409354/alierc4n_recipe_image_80a8e29c-bd15-4537-a8fc-999d3f27709b.png?width=936&height=936'),
                      onecikantarifler(
                          resimUrl:
                          'https://media.discordapp.net/attachments/1094923419155435543/1095416009780891648/alierc4n_recipe_image_55a097be-dbd0-4b14-86e5-e32b284d08b5.png?width=936&height=936'),
                      onecikantarifler(
                          resimUrl:
                          'https://media.discordapp.net/attachments/1094923419155435543/1095416016349184150/alierc4n_recipe_image_9ba6cf97-9c4f-4823-893a-e9bdc680cd99.png?width=936&height=936'),
                      onecikantarifler(
                          resimUrl:
                          'https://media.discordapp.net/attachments/1094923419155435543/1095416036368597074/alierc4n_recipe_image_e7b10dd7-fbac-4df6-a2a4-5abdfeb94532.png?width=936&height=936'),
                      onecikantarifler(
                          resimUrl:
                          'https://media.discordapp.net/attachments/1094923419155435543/1095417542882893824/alierc4n_recipe_image_2741f448-e6cb-46f1-9cc4-d36214779239.png?width=936&height=936'),
                      onecikantarifler(
                          resimUrl:
                          'https://media.discordapp.net/attachments/1094923419155435543/1095417552143925370/alierc4n_recipe_image_adf86037-e238-49f7-af29-d0a1148e8dd4.png?width=936&height=936'),
                    ],
                  ),
                ),
              ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => tarifdetay()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: tarifler(
                    "45 Dakika",
                    "Tas Kebabı",
                    'Düdüklü tencereye 600gr kuşbaşı doğranmış dana eti koyun. Üzerine 5 yemek kaşığı zeytinyağı ilave edin...',
                    "10 Beğeni",
                    "2 Yorum",
                  'https://media.discordapp.net/attachments/1094923419155435543/1095417552143925370/alierc4n_recipe_image_adf86037-e238-49f7-af29-d0a1148e8dd4.png?width=936&height=936',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: tarifler(
                    '45 Dakika',
                    'Nohutlu Patates Yahnisi',
                    'Geniş bir tavayı ocağa koyup, kızdırın. Üzerine 300gr kuşbaşı doğranmış et koyun. Kuşbaşı etler suyunu salıp çekene kadar pişirin...',
                    "1 Beğeni",
                    "0 Yorum",
                    'https://media.discordapp.net/attachments/1094923419155435543/1095417542882893824/alierc4n_recipe_image_2741f448-e6cb-46f1-9cc4-d36214779239.png?width=936&height=936'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
