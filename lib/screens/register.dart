import 'package:flutter/material.dart';

import 'package:flutter_login/screens/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              height: 350,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Image.asset(
                      "assets/Path.png",
                    ),
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
                          "Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "New Account",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
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
                        labelStyle:
                            const TextStyle(color: Colors.black, fontSize: 15),
                        hintStyle: const TextStyle(color: Colors.grey),
                        hintText: 'Enter Name',
                        labelText: 'Full Name'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelStyle:
                            const TextStyle(color: Colors.black, fontSize: 15),
                        hintStyle: const TextStyle(color: Colors.grey),
                        hintText: 'Enter Email Address',
                        labelText: 'Email Address'),
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(15)),
                  //       labelStyle:
                  //           const TextStyle(color: Colors.black, fontSize: 25),
                  //       hintStyle: const TextStyle(color: Colors.grey),
                  //       hintText: 'Enter Password',
                  //       labelText: 'Password'),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelStyle:
                            const TextStyle(color: Colors.black, fontSize: 15),
                        hintStyle: const TextStyle(color: Colors.grey),
                        hintText: 'Enter Number',
                        labelText: 'Mobile Number'),
                  ),
                ],
              )),
            ),
            const SizedBox(
              height: 20,
            ),
           const Padding(
              padding:  EdgeInsets.only(left: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Have a Referral Code ?",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  )),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 45,
              width: 200,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                      backgroundColor: MaterialStateProperty.all(
                        const  Color.fromARGB(255, 188, 69, 61))),
                  onPressed: () {},
                  child:const Text(
                    "Register account",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: RichText(
                  text:const TextSpan(children: [
                TextSpan(text: 'or  ', style: TextStyle(color: Colors.grey)),
                TextSpan(
                    text: 'Sign in ', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: "with your account",
                    style: TextStyle(color: Colors.grey))
              ])),
            )
          ],
        ),
      ),
    );
  }
}
