import 'package:flutter/material.dart';
import 'package:yemekrehberison/tarifdetay.dart';
class tarifler extends StatefulWidget {
  final String tarifsure;
  final String tarifisim;
  final String tarifaciklama;
  final String tarifbegeni;
  final String tarifyorum;
  final String tarifresim;
  bool isFavorited = false;

  tarifler(
    this.tarifsure,
    this.tarifisim,
    this.tarifaciklama,
    this.tarifbegeni,
    this.tarifyorum,
    this.tarifresim, {
    Key? key,
  }) : super(key: key);

  @override
  State<tarifler> createState() => _tariflerState();
}

class _tariflerState extends State<tarifler> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 415,
      height: 210,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.timer,
                          color: Colors.orange,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              widget.tarifsure,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              widget.tarifisim,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        widget.tarifaciklama,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.amberAccent),
                        Icon(Icons.star, color: Colors.amberAccent),
                        Icon(Icons.star, color: Colors.amberAccent),
                        Icon(Icons.star, color: Colors.amberAccent),
                        Icon(Icons.star, color: Colors.grey),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              widget.isFavorited = !widget.isFavorited;
                            });
                          },
                          child: Icon(
                            widget.isFavorited
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: widget.isFavorited ? Colors.red : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.comment,
                          color: Colors.orangeAccent,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(widget.tarifyorum),
                        ),
                        Spacer(),
                        Icon(
                          Icons.thumb_up,
                          color: Colors.orangeAccent,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(widget.tarifbegeni),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  widget.tarifresim,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
