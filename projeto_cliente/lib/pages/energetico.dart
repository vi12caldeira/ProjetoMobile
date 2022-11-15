import 'package:flutter/material.dart';

class EnergeticoPage extends StatelessWidget {
  const EnergeticoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Energeticos'),
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
                  Text("Monster Energy Ultra Paradise 473ml\n"
                      "  RS 9,10",
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

              child: Text("Monster Mango Loco 473ml\n"
                          "  RS 10,07",
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

              child: Text("Monster Ultra Lata 473ml\n"
                  "  RS 10,00",
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

              child: Text("TNT Focus 473ml\n"
                  "  RS 7,99",
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

              child: Text("TNT Citrus 269ml\n"
                  "  RS 5,90",
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

              child: Text("Red Bull 473ml\n"
                  "  RS 7,19",
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

              child: Text("Red Bull Sugar Free 250ml\n"
                  "  RS 6,50",
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

              child: Text("Baily Melancia 473ml\n"
                  "  RS 5,81",
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

              child: Text("Baily Tropical 473ml\n"
                          "  RS 5,81",
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
