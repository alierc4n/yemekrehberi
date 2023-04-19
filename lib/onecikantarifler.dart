import 'package:flutter/material.dart';

class onecikantarifler extends StatelessWidget {
  final String resimUrl;

  const onecikantarifler({Key? key, required this.resimUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          resimUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

