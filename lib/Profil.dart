import 'dart:ui';

import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://media.discordapp.net/attachments/1094923419155435543/1096387390299455509/alierc4n_rick_and_morty_themed_image_full_hd_8k_resolution_high_edd9703f-c6b3-4011-8c5e-31527ff0bd02.png?width=468&height=468'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    bottom: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'https://media.discordapp.net/attachments/1094923419155435543/1096387390299455509/alierc4n_rick_and_morty_themed_image_full_hd_8k_resolution_high_edd9703f-c6b3-4011-8c5e-31527ff0bd02.png?width=468&height=468'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Muhammed Ali Ercan',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'aliercan5244@gmail.com',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: Container(
                              width: 415,
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 16),
                              child: Row(
                                children: [
                                  Icon(Icons.favorite_border),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: Text(
                                      'This is the text in the center',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Icon(Icons.navigate_next),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, bottom: 50),
                            child: Container(
                              width: 415,
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 16),
                              child: Row(
                                children: [
                                  Icon(Icons.favorite_border),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: Text(
                                      'This is the text in the center',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Icon(Icons.navigate_next),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 415,
                            height: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 16),
                            child: Row(
                              children: [
                                Icon(Icons.favorite_border),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    'This is the text in the center',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Icon(Icons.navigate_next),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 16,
            right: 16,
            child: IconButton(
              icon: Icon(Icons.settings,color: Colors.white,),
              onPressed: () {
                // TODO: Implement settings functionality
              },
            ),
          ),
        ],
      ),
    );
  }
}
