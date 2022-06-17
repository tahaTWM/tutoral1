import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zain toterial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showPassword = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Zain tutorial"),
        ),
        body: Center(
          child: Wrap(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    const Text(
                      "Login Screem",
                      style: TextStyle(
                          fontSize: 33,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                        decoration: const InputDecoration(hintText: "Email"),
                        controller: email),
                    const SizedBox(height: 30),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: "Password",
                            suffixIcon: IconButton(
                                icon: const Icon(Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                })),
                        obscureText: showPassword,
                        controller: password),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        if (email.text == "taha@gmail.com" &&
                            password.text == "taha1234") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Wrong Password")));
                        }
                      },
                      child: const Text("Login"),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
