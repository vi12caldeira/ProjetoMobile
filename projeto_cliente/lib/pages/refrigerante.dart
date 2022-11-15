<<<<<<< HEAD
import 'package:flutter/material.dart';

class RefrigerantePage extends StatelessWidget {
  const RefrigerantePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Refrigerantes'),
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
                  Text("Sukita uva\n"
                      "  RS 3,50",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat',
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

              child: Text("Sukita laranja\n"
                          "  RS 3,50",
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

              child: Text("Guarana 2l\n"
                  "  RS 5,98",
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

              child: Text("Guarana 1,5l\n"
                  "  RS 3,98",
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

              child: Text("Coca cola 2l\n"
                  "  RS 8,90",
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

              child: Text("Coca-cola 1,5l\n"
                  "  RS 5,98",
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

              child: Text("Guarapan 2l\n"
                  "  RS 4,60",
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

              child: Text("Fanta laranja\n"
                  "  RS 6,00",
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

              child: Text("Fanta Uva\n"
                          "  RS 6,00",
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
=======
import 'package:flutter/material.dart';

class RefrigerantePage extends StatelessWidget {
  const RefrigerantePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Refrigerantes'),
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
                  Text("Sukita uva\n"
                      "  RS 3,50",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat',
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

              child: Text("Sukita laranja\n"
                          "  RS 3,50",
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

              child: Text("Guarana 2l\n"
                  "  RS 5,98",
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

              child: Text("Guarana 1,5l\n"
                  "  RS 3,98",
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

              child: Text("Coca cola 2l\n"
                  "  RS 8,90",
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

              child: Text("Coca-cola 1,5l\n"
                  "  RS 5,98",
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

              child: Text("Guarapan 2l\n"
                  "  RS 4,60",
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

              child: Text("Fanta laranja\n"
                  "  RS 6,00",
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

              child: Text("Fanta Uva\n"
                          "  RS 6,00",
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
>>>>>>> 7a19ff6f062e15ed92e7029373b0f1d731cc6c1f
