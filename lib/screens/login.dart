import 'package:flutter/material.dart';
import 'package:systemmanagement/screens/replace.dart';
import 'package:systemmanagement/screens/screen.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _screen2State();
}

class _screen2State extends State<login> {
  bool _pass = true;

  final GlobalKey<FormState> _key = new GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String? _Username(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your username';
    }
    if (value.length < 8) {
      return 'Username should have at least 8 characters';
    }
    if (value[0] != value[0].toUpperCase()) {
      return 'Username should start with an uppercase letter';
    }
  }

  String? _Password(String? value) {
    if (value!.isEmpty) {
      return 'please enter your password';
    }

    final RegExp regx = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{10,}$');

    if (!regx.hasMatch(value)) {
      return 'invalid password';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 163, 114, 162),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(height: 50),
          Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Container(
                  child: Icon(
                Icons.mail_lock,
                size: 200,
              ))),
          const Spacer(),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 249, 249, 249),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            height: MediaQuery.of(context).size.height * 0.67,
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Form(
                key: _key,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: _usernameController,
                        validator: _Username,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 163, 114, 162),
                          ),
                          hintText: "Username",
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        validator: _Password,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 163, 114, 162),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _pass = !_pass;
                              });
                            },
                            child: Icon(
                              _pass ? Icons.visibility_off : Icons.visibility,
                              color: Color.fromARGB(255, 163, 114, 162),
                            ),
                          ),
                          hintText: "Password",
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        obscureText: _pass,
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => screen3(),
                              ),
                            );
                          }
                        },
                        child: const Text('Login'),
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(10),
                            elevation: 15,
                            shadowColor: const Color.fromARGB(255, 86, 86, 85),
                            backgroundColor: Color.fromARGB(255, 163, 114, 162),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            fixedSize: const Size(150, 10)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
