import 'package:fb_page/widget/build_textButton_widget.dart';
import 'package:fb_page/widget/build_textFormField_widget.dart';
import 'package:fb_page/widget/build_text_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.black87])),
          child: Column(
            children: [
              Container(
                height: 205,
                width: 436,
                //color: Colors.blue,
                child: const Center(
                  child: Text(
                    ("English(US)"),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Image.asset(
                'assets/images/fb.svg',
                height: MediaQuery.of(context).size.height / 11,
                // height: 80,
                width: MediaQuery.of(context).size.width / 8,
                // width: 60,
              ),
              const SizedBox(
                height: 120,
                width: 300,
              ),
              SizedBox(
                height: 73,
                width: 406,
                child: BuildTextFormFieldWidget(
                  onTap: () {},
                  text: "Mobile number or email",
                  suffixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.white60,
                  ),
                ),
              ),
              SizedBox(
                  width: 406,
                  child: BuildTextFormFieldWidget(
                    onTap: () {
                      setState(() {
                        isTapped = !isTapped;
                      });
                    },
                    text: "Password",
                    isObscure: isTapped ? true : false,
                    suffixIcon: Icon(
                      isTapped ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white60,
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    color: Colors.blue),
                height: MediaQuery.of(context).size.height / 20,
                // height: 50,
                width: MediaQuery.of(context).size.width / 1.1,
                child: TextButton(
                  onPressed: () {
                    print("login");
                  },
                  child: const BuildTextWidget(
                    text: "Login",
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              BuildTextButtonWidget(
                onTap: () {
                  print("forgot password");
                },
                text: "Forgot password?",
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              Container(
                height: 198,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.lightBlueAccent)),
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 21,
                child: TextButton(
                    onPressed: () {
                      print("create new account");
                    },
                    child: const Text(
                      'Create new account',
                      style: TextStyle(color: Colors.lightBlueAccent),
                    )),
              ),
              Image.asset(
                'assets/images/4.png',
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
