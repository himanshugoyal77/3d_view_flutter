import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 450,
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: "https://app.vectary.com/p/0KreFe5Erj4JAExSOBnhoi",
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    child: const Text(
                      "Headphones",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.purple),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 8, top: 8),
                  child: Row(
                    children: const [
                      Chip(
                        label: Text(
                          "Headphones",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.purple,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Chip(
                        label: Text(
                          "Technology",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.purple,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              "The placeholder text, beginning with the line “Lorem ipsum dolor sit amet, consectetur adipiscing elit”, looks like Latin because in its youth, centuries ago, it was Latin.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Chip(
                  label: Icon(
                    Icons.remove,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Chip(
                  label: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Chip(
                  label: Icon(
                    Icons.add,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.deepPurple),
            child: const Center(
              child: Text(
                "PURCHASE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
