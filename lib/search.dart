import 'package:flutter/material.dart';

class arama extends StatefulWidget {
  const arama({Key? key}) : super(key: key);

  @override
  State<arama> createState() => _aramaState();
}

class _aramaState extends State<arama> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.orange,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Yemek ismi veya malzeme girin...',
                border: InputBorder.none,
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 177, 32, 1),
                      Color.fromRGBO(255, 123, 12, 1),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              Positioned.fill(
                child: IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
