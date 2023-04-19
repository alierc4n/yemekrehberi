import 'package:flutter/material.dart';
import 'package:yemekrehberison/tarifler.dart';

class tarifdetay extends StatefulWidget {
  const tarifdetay({Key? key}) : super(key: key);

  @override
  _tarifdetayState createState() => _tarifdetayState();
}

class _tarifdetayState extends State<tarifdetay> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Tarif Detayı',
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.orange,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 415,
            height: null,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.orange,
                      ),
                      Text(
                        "30 Dakika",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.star, color: Colors.amberAccent),
                      Icon(Icons.star, color: Colors.amberAccent),
                      Icon(Icons.star, color: Colors.amberAccent),
                      Icon(Icons.star, color: Colors.amberAccent),
                      Icon(Icons.star, color: Colors.grey),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isFavorited = !isFavorited;
                          });
                        },
                        child: Icon(
                          isFavorited ? Icons.favorite : Icons.favorite_border,
                          color: isFavorited ? Colors.red : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 395,
                  height: 187,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://media.discordapp.net/attachments/1094923419155435543/1095417542882893824/alierc4n_recipe_image_2741f448-e6cb-46f1-9cc4-d36214779239.png?width=936&height=936'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Patetesli Sulu Köfte",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Malzemeler:",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("300 g kıyma"),
                              Text("1 soğan"),
                              Text("1 yumurta"),
                              Text("3 yemek kaşığı galeta unu"),
                              Text("4-5 patates"),
                              Text("1 yemek kaşığı salça"),
                              Text("4 su bardağı su"),
                              Text("Tuz, karabiber, pul biber, kimyon"),
                              Text("2 yemek kaşığı sıvı yağ"),
                              SizedBox(height: 20),
                              Text(
                                "Yapılışı:",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                  "Kıyma, rendelenmiş soğan, yumurta, galeta unu, tuz, karabiber ve kimyonu yoğurma kabına alın. İyice yoğurarak köfte harcını hazırlayın."),
                              Text(
                                  "Köfte harcından ceviz büyüklüğünde parçalar koparıp yuvarlayarak köfteleri şekil verin."),
                              Text("Patatesleri soyun ve küp şeklinde doğrayın."),
                              Text(
                                  "Tencerede sıvı yağı ısıtın ve salçayı ekleyip karıştırarak kavurun."),
                              Text(
                                  "Patatesleri tencereye ekleyin, karıştırarak 2-3 dakika kavurun."),
                              Text(
                                  "Sıcak suyu ekleyin, tuz ve baharatları da ekleyip karıştırın."),
                              Text(
                                  "Hazırladığınız köfteleri tencereye yerleştirin ve kısık ateşte patatesler ve köfteler iyice yumuşayana kadar pişirin (yaklaşık 20-25 dakika)."),
                              Text("Sulu köfteniz hazır! Sıcak servis yapın."),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(237, 237, 239, 1),
    );
  }
}
