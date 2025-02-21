import 'package:flutter/material.dart';
import 'package:first_project/pages/home.dart';

// Global variables for username and password
TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

Map<String, Map<String, String>> users = {
  '123220042': {
    'nama': 'Azhar Fikri H.',
    'username': 'test1',
    'password': '123'
  },
  '123220050': {'nama': 'Re Faiza', 'username': 'test2', 'password': '234'}
};

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          centerTitle: true,
          titleTextStyle: const TextStyle(
              color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.w600),
          title: const Text('Login Page'),
        ),
        body: const LoginCard(),
      ),
    );
  }
}

class LoginCard extends StatefulWidget {
  const LoginCard({super.key});

  @override
  _LoginCardState createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'assets/icons/man.png',
                  width: 150.0,
                ),
                TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(labelText: 'Username'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Silahkan masukkan username';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Silahkan masukkan password';
                    }
                    return null;
                  },
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      /*
                      if (usernameController.text == "admin" &&
                          passwordController.text == "123") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(
                                    text: usernameController.text,
                                  )),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Username atau password salah')),
                        );
                      }*/
                      for (var entry in users.entries) {
                        if (entry.value['username'] ==
                                usernameController.text &&
                            entry.value['password'] ==
                                passwordController.text) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage(
                                      text: usernameController.text,
                                    )),
                          );
                        }
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Username atau password salah')),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Tolong isi form yang tertinggal')),
                      );
                    }
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
