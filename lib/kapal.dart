import 'package:flutter/material.dart';

class MyKapal extends StatefulWidget {
  const MyKapal({super.key});

  @override
  State<MyKapal> createState() => _MyKapalState();
}

class _MyKapalState extends State<MyKapal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tiket kapal'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Atur keberangkatan',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Pilih asal pelabuhan',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 10),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    label: Text('From')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Pilih tujuan pelabuhan',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 10),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    label: Text('To')),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 15)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    ("Tanggal Pergi"),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Tanggal pergi',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 10),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    label: Text("Tanggal pergi")),
                keyboardType: TextInputType.datetime,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Tanggal pulang',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 10),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    label: Text("Tanggal pulang")),
                keyboardType: TextInputType.datetime,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Penumpang',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 10),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    label: Text("Jumlah Penumpang")),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: DropdownButtonFormField(
                hint: Text('Seat Class'),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                items: [
                  DropdownMenuItem(value: 'Economy', child: Text('Economy')),
                  DropdownMenuItem(value: 'Regular', child: Text('Regular')),
                  DropdownMenuItem(value: 'Exlucive', child: Text('Exlucive')),
                ],
                onChanged: (value) {},
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 15)),
            Center(
              child: ElevatedButton(
                  onPressed: () {}, child: Text('Search Ticket')),
            )
          ],
        ),
      ),
    );
  }
}
