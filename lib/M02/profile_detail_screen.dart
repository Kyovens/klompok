import 'package:flutter/material.dart';
import 'package:tugas_kelompok/M04/todos.dart';

class DetailScreen02 extends StatelessWidget {
  const DetailScreen02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('211110870_Mhd.Reza'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 152, 201, 224),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: const Text(
                      'Strawberry Pavlova',
                      style: TextStyle(fontSize: 24.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 5, top: 5),
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 152, 201, 224),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: const Text(
                      'Paviova is a meringue-based desert \nname after the Russian \nballerina Anna Pavlova, \nfeatures a erisp crust and soft, \nlight inside, \ntopped with fruit and \nwhipped cream',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 5, top: 5),
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 152, 201, 224),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.horizontal()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                          ],
                        ),
                        const Text('170 Reviews')
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 5),
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 152, 201, 224),
                        border: Border.all(color: Colors.black, width: 1.0)),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(right: 30, left: 50),
                              child: Column(
                                children: [
                                  const Icon(Icons.business),
                                  Row(
                                    children: const [Text('PREP'), Text(':')],
                                  ),
                                  Row(
                                    children: const [
                                      Text('25 '),
                                      Text('min'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 30),
                              child: Column(
                                children: [
                                  const Icon(Icons.alarm),
                                  Row(
                                    children: const [Text('COOK'), Text(':')],
                                  ),
                                  Row(
                                    children: const [Text('1 '), Text('hr')],
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                const Icon(Icons.dinner_dining),
                                Row(
                                  children: const [Text("FEEDS"), Text(':')],
                                ),
                                Row(
                                  children: const [Text('4-6')],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img1.jpg',
                      width: 300,
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20, top: 100),
            child: const Text('Ini adalah detail Profile'),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Kembali')),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TodosAddPage(),
                      ),
                    );
                  },
                  child: const Text('Todos Page'),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
