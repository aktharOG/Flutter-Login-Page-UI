import 'package:flutter/material.dart';

import 'package:flutter_login/screens/home_screen.dart';
import 'package:flutter_login/screens/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
      bool tick = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              height: 400,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/Path.png",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Please Login To Using App",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: 'Enter Email Address',
                        labelText: 'Email Address'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: 'Enter Password',
                        labelText: 'Password'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              activeColor: Colors.red,
                              value: tick,
                              onChanged: ( value) {
                                setState(() {
                                  tick = !tick;
                                });
                              },
                            ),
                            const Text("Remember")
                          ],
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forget Password?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 236, 101, 92),
                                fontWeight: FontWeight.w300),
                          ))
                    ],
                  )
                ],
              )),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              height: 45,
              width: 200,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 176, 51, 42))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: const Text("Sign In",
                      style: TextStyle(fontWeight: FontWeight.w700))),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterPage()));
              },
              child: RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: 'or  ',
                    style: TextStyle(color: Color.fromARGB(255, 243, 67, 55))),
                TextSpan(
                    text: "Register a new account",
                    style: TextStyle(color: Colors.grey))
              ])),
            )
          ],
        ),
      ),
    );
  }
}
