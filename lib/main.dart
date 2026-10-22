import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatefulWidget {
  @override
  State<Coba> createState() => Coba_State();
}

class Coba_State extends State<Coba> {
  List<String> nama = ["raden", "unyil", "tika"];
  List<String> kelas = ["xpplg1", "xpplg2", "xpplg3"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(children: [
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [Text("No"), Text("nama"), Text("kelas")]),
                for (int i = 0; i < nama.length; i++)
                  TableRow(children: [
                    Text("${i + 1}"),
                    Text(nama[i]),
                    Text(kelas[i])
                  ]),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
