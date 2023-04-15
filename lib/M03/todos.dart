import 'package:flutter/material.dart';

class Minggu03 extends StatefulWidget {
  const Minggu03({super.key});

  @override
  State<Minggu03> createState() => _Minggu03State();
}

class _Minggu03State extends State<Minggu03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Icon(Icons.list_alt_rounded),
                  Text('Kegiatan'),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Judul Kegiatan'),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.sort),
                  Text('Kegiatan'),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(15, 40, 15, 40),
                      border: OutlineInputBorder(),
                      hintText: 'Tambah Keterangan'),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(children: const [
                      Icon(Icons.date_range),
                      Text('Tanggal Mulai'),
                    ]),
                  ),
                  Expanded(
                    child: Row(children: const [
                      Icon(Icons.date_range_outlined),
                      Text('Tanggal Selesai')
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: '20-03-2022'),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: '20-03-2022'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Batal',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Simpan',
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
