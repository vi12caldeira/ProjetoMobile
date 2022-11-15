import 'package:flutter/material.dart';

class CervejaPage extends StatelessWidget {
  const CervejaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cervejas'),
          centerTitle: true,
        ),
        body:
            _listOnline());
  }

  Widget _listOnline() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          /* Item 1 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        width: 2,
                        color: Colors.black12,
                        style: BorderStyle.solid), //BorderSide
                    bottom: BorderSide(
                        width: 2,
                        color: Colors.black12,
                        style: BorderStyle.solid), //BorderSide
                    left: BorderSide(
                        width: 2,
                        color: Colors.black12,
                        style: BorderStyle.solid), //Borderside
                    right: BorderSide(
                        width: 2,
                        color: Colors.black12,
                        style: BorderStyle.solid), //BorderSide
                  ),
                  borderRadius: BorderRadius.circular(6.0),
                ),
              child: (
                  Text("Skol 473ml\n"
                      "  RS 3,98",
                  style: TextStyle(
                    fontSize: 18,
                  )
              )
              )
            ),
          ],
        ),
        Column(
          /* Item 2 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),

              child: Text("Skol 269ml\n"
                          "  RS 2,45",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 3 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),

              child: Text("Skol 350ml\n"
                  "  RS 3,20",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 4 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),

              child: Text("Brahma 473ml\n"
                  "  RS 4,00",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 5 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),

              child: Text("Brahma Duplo Malte\n"
                  "  RS 4,00",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 6 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),

              child: Text("Lokal 473ml\n"
                  "  RS 2,95",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 7 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),

              child: Text("Império 350ml\n"
                  "  RS 3,75",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 8 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),

              child: Text("Heineken 650ml\n"
                  "  RS 10,00",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 9 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),

              child: Text("Heineken 350ml\n"
                          "  RS 5,90",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),

      ],
    );
  }
}
