import 'package:flutter/material.dart';

class MyPesawat extends StatefulWidget {
  const MyPesawat({super.key});

  @override
  State<MyPesawat> createState() => _MyPesawatState();
}

class _MyPesawatState extends State<MyPesawat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tiket Pesawat'),
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
                    hintText: 'Pilih asal bandara',
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
                    hintText: 'Pilih tujuan bandara',
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
