import 'package:doctor_app/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: Container(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/images/ProductArena_logo 1.png',
                    width: 156.77,
                    height: 32,
                  ),
                ),
                const SizedBox(
                  width: 150,
                ),
                const Icon(
                  Icons.logout_outlined,
                  color: Colors.black,
                  size: 23,
                )
              ],
            ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/images/doctor-illustration-hamamzai.png',
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: const [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text('MY profile')),
                          Text(
                            'DR. Tech 387',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Patient list for today',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                          child: Icon(
                        Icons.emoji_people,
                        size: 20,
                      )),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: const [
                            Text('Alen K.'),
                            Text(
                              '16:00 - Common cold',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                          child: Icon(
                        Icons.emoji_people,
                        size: 20,
                      )),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: const [
                            Text('Alen K.'),
                            Text(
                              '16:00 - Common cold',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                          child: Icon(
                        Icons.emoji_people,
                        size: 20,
                      )),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: const [
                            Text('Alen K.'),
                            Text(
                              '16:00 - Common cold',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Tommorrow',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                            child: Icon(
                          Icons.emoji_people,
                          size: 20,
                        )),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: const [
                              Text('Alen K.'),
                              Text(
                                '16:00 - Common cold',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                            child: Icon(
                          Icons.emoji_people,
                          size: 20,
                        )),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: const [
                              Text('Alen K.'),
                              Text(
                                '16:00 - Common cold',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                            child: Icon(
                          Icons.emoji_people,
                          size: 20,
                        )),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: const [
                              Text('Alen K.'),
                              Text(
                                '16:00 - Common cold',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Tommorrow',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
