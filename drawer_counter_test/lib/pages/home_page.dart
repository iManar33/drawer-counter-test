import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'dart:convert';

import '../counter_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dio = Dio();

  int? count;

  final counterStore = CounterStore();

  void getCount() async {
    try {
      final response = await dio.get('http://api.ibaity.com/v1/config');
      final jsonResponse = json.decode(response.toString());
      setState(() {
        count = jsonResponse['count'];
        counterStore.setValue(count!);
      });
      print('count ($count)');
    } catch (e) {
      print('Error with fetching: $e');
    }
  }

  void updateCount() async {
    try {
      await counterStore.increment();
      final finalCount = counterStore.count;
      final response = await dio.patch(
        'https://api.ibaity.com/v1/config/count',
        data: {'count': finalCount},
        options: Options(
          contentType: 'application/x-www-form-urlencoded',
        ),
      );

      if (response.statusCode == 200) {
        print('Count updated on server');
      } else {
        print('Failed updating count on server');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getCount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Counter'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
            backgroundColor: MaterialStateProperty.all((Colors.green.shade700)),
            minimumSize: MaterialStateProperty.all(
                Size(MediaQuery.of(context).size.width / 2, 60)),
          ),
          onPressed: () {
            updateCount();
          },
          child: const Text(
            'Increase',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      drawer: Observer(
        builder: (_) {
          return Drawer(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight:
                    Radius.circular(MediaQuery.of(context).size.height / 4),
              ),
            ),
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.green,
                  title: Text('count (${counterStore.count})'),
                  automaticallyImplyLeading: false,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
