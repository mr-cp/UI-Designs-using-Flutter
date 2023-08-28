import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen(
      {super.key,
      required this.asset,
      required this.tag,
      required this.fullDesc});
  final String asset;
  final String tag;
  final String fullDesc;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double screenHeight = 0;
  double screenwidth = 0;

  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          
          children: [
            Hero(
              tag: widget.tag,
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(40)),
                child: SizedBox(
                  height: screenHeight / 2.2,
                  width: screenwidth,
                  child: Image.asset(
                    'assets/${widget.asset}',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                  child: Text(
                    widget.tag,
                    style: const TextStyle(
                        fontWeight: FontWeight.w200, fontSize: 50,decoration: TextDecoration.lineThrough),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    widget.fullDesc,
                    style: const TextStyle(fontSize: 27,fontWeight: FontWeight.w200),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                  child: Text(
                    'In-Stock',
                    style: TextStyle(
                        fontWeight: FontWeight.w300, fontSize: 35,color: Colors.green),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
