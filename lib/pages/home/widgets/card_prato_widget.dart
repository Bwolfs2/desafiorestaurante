import 'package:desafio_restaurante/models/prato.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardPratoWidget extends StatelessWidget {
  final ThemeData theme;
  final Prato prato;

  const CardPratoWidget(this.theme, this.prato, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230,
      child: Stack(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 30, bottom: 10, right: 10),
            child: Container(
              height: 240,
              width: double.infinity,
              child: Card(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 155,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(
                                Icons.favorite,
                                size: 15,
                                color: Color(0xffC2D4E0),
                              )
                            ]),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${prato.likes} likes",
                              style: TextStyle(
                                  color: Color(0xff99A1AC),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(
                                FontAwesomeIcons.comment,
                                size: 15,
                                color: Color(0xffC2D4E0),
                              )
                            ]),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${prato.commentsTotal} comments",
                              style: TextStyle(
                                  color: Color(0xff99A1AC),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(
                                FontAwesomeIcons.share,
                                size: 15,
                                color: Color(0xffC2D4E0),
                              )
                            ]),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "share",
                              style: TextStyle(
                                  color: Color(0xff99A1AC),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Card(
              elevation: 4,
              child: Container(
                height: 150,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * .5,
                              child: Text(
                                "${prato.title}".toUpperCase(),
                                style: theme.textTheme.title,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            _rate(context, prato.rate),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "${prato.minute}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff728395)),
                                    ),
                                    Text(
                                      "minutes",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xffD8DBE0)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "/",
                                    style: TextStyle(
                                        fontSize: 30, color: Color(0xff728395)),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "${prato.nutricion}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff728395)),
                                    ),
                                    Text(
                                      "nutritions",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xffD8DBE0)),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 25,
            child: ClipOval(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * .36,
                  ),
                  //color: Colors.red,
                ),
                width: MediaQuery.of(context).size.width * .36,
                height: MediaQuery.of(context).size.width * .36,
                child: Image.network(prato.image),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _rate(BuildContext context, int rate) {
    return Row(
        children: List.generate(rate, (val) => val)
            .map((val) => Icon(
                  Icons.star,
                  size: 16,
                  color: Theme.of(context).cursorColor,
                ))
            .toList());
  }
}
