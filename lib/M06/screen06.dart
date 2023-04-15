import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_kelompok/M06/provider06.dart';

class Screen06 extends StatefulWidget {
  const Screen06({Key? key}) : super(key: key);

  @override
  State<Screen06> createState() => _Screen06State();
}

class _Screen06State extends State<Screen06> {
  String itemSelected = 'Pilih Cita-Cita';
  List items = [
    'Pilih Cita-Cita',
    'Software Developer',
    'Software Engineering',
    'Data Analyst',
    'Data Scientist',
    'FrontEnd Mobile'
  ];

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Provider06>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Tugas Minggu 06')),
      body: Column(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text('Tampilkan Cita-Cita'),
                const SizedBox(
                  width: 300,
                ),
                Switch(
                    value: prov.statusmuncul,
                    activeColor: Colors.green,
                    onChanged: (val) {
                      prov.statusmuncul = val;
                    }),
              ],
            ),
            if (prov.statusmuncul == true)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Cita-Cita'),
                      DropdownButton(
                        items: items.map((item) {
                          return DropdownMenuItem(
                            child: Text(item),
                            value: item,
                          );
                        }).toList(),
                        value: itemSelected,
                        onChanged: (val) {
                          setState(() {
                            itemSelected = val as String;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  if (itemSelected == 'Software Developer')
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // const Text('Saya ingin menjadi ${itemSelected[1]}'),
                        Image.asset(
                          'assets/img2.jpg',
                          width: 300,
                        ),
                      ],
                    )
                  else if (itemSelected == 'Software Engineering')
                    Image.asset(
                      'assets/img3.jpg',
                      width: 300,
                    )
                  else if (itemSelected == 'Data Analyst')
                    Image.asset(
                      'assets/img4.webp',
                      width: 300,
                    )
                  else if (itemSelected == 'Data Scientist')
                    Image.asset(
                      'assets/img5.jpg',
                      width: 300,
                    )
                  else if (itemSelected == 'FrontEnd Mobile')
                    Image.asset(
                      'assets/img6.jpg',
                      width: 300,
                    )
                  else
                    const Text(
                      'Silahkan Pilih Cita-Cita Anda',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                ],
              )
          ],
        ),
      ]),
    );
  }
}
