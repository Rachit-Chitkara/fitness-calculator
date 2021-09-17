import 'package:flutter/material.dart';
import 'package:flash_app/LoginScreen.dart';
import 'package:flash_app/RegistrationScreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'RoundedButton.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'Welcome_Screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation =
        ColorTween(begin: Colors.white, end: Colors.black).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1526506118085-60ce8714f8c5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z3ltfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 260),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30.0), bottom: Radius.zero),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Hero(
                          tag: 'logo',
                          child: Container(
                            child: Image.asset('images/logo.png'),
                            height: 60.0,
                          ),
                        ),
                        TyperAnimatedTextKit(
                          text: [
                            'Fitness Calculator'
                                ''
                          ],
                          textStyle: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
                      child: RoundedButton(
                        fillColor: Color(0xFFEB1555),
                        text: 'Login',
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
                      child: RoundedButton(
                        fillColor: Colors.redAccent,
                        text: 'Register',
                        onPressed: () {
                          Navigator.pushNamed(context, RegistrationScreen.id);
                        },
                      ),
                    ),
                    SizedBox(height: 60.0),
                    Container(
                      color: Colors.white.withOpacity(0.3),
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "LET'S START YOUR FITNESS JOURNEY",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
