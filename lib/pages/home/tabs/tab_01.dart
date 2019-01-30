import 'package:desafio_restaurante/models/prato.dart';
import 'package:desafio_restaurante/pages/home/widgets/card_prato_widget.dart';
import 'package:flutter/material.dart';

class Tab01 extends StatefulWidget {
  final Color background;
  Tab01(this.background);

  @override
  _Tab01State createState() => _Tab01State();
}

class _Tab01State extends State<Tab01> {
  List<Prato> pratos = List<Prato>();

  @override
  void initState() {
    pratos.add(Prato(
        "1",
        "Kamaaget Udon",
        21,
        199,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnQD3_UsctuMLjGuaWose3EwOnpHJUZwv6AtvmhWhhuUojdPO4",
        1,
        370,
        55));

    pratos.add(Prato(
        "2",
        "Valencian Pronunciation",
        30,
        109,
        "https://lh3.googleusercontent.com/-VEHYy6Qbu74/VilK3e3K3UI/AAAAAAAArRc/j4K822ouHKw/%25255BUNSET%25255D.png",
        3,
        370,
        55));
    pratos.add(Prato(
        "3",
        "Kamaaget Udon",
        17,
        89,
        "https://i2.wp.com/segredosdeviagem.com.br/wp-content/uploads/2014/03/foto-1-23-e1394640515454.jpg?resize=512%2C512&ssl=1",
        5,
        370,
        55));
    pratos.add(Prato(
        "4",
        "Kamaaget Udon",
        21,
        199,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnQD3_UsctuMLjGuaWose3EwOnpHJUZwv6AtvmhWhhuUojdPO4",
        4,
        370,
        55));
    pratos.add(Prato(
        "5",
        "Kamaaget Udon",
        67,
        1900,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnQD3_UsctuMLjGuaWose3EwOnpHJUZwv6AtvmhWhhuUojdPO4",
        4,
        370,
        55));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Container(
          color: widget.background,
          padding: EdgeInsets.only(bottom: 100),
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: pratos.length,
            itemBuilder: (BuildContext context, int index) {
              var theme = index % 3 == 0
                  ? ThemeData(
                      textTheme: TextTheme(
                      title: TextStyle(
                          color: Color(0xffEDBF21),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ))
                  : index % 2 == 0
                      ? ThemeData(
                          textTheme: TextTheme(
                          title: TextStyle(
                              color: Color(0xff32B05F),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ))
                      : ThemeData(
                          textTheme: TextTheme(
                          title: TextStyle(
                              color: Color(0xffEA5743),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ));

              return CardPratoWidget(theme, pratos[index]);
            },
          ),
        ),
      ),
    );
  }
}
