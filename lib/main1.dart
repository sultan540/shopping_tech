import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isScaled = false;
  bool _isScaled1 = false;
  bool _isScaledSignUp = false;
  bool _isScaledSignIn = false;

  @override
  Widget build(BuildContext context) {
    List images = ["3794933"];
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Suwannaphum',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18),
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            if (_isScaled) {
              setState(() {
                _isScaled = false;
              });
            }
            if (_isScaled1) {
              setState(() {
                _isScaled1 = false;
              });
            }
            if (_isScaledSignUp) {
              setState(() {
                _isScaledSignUp = false;
              });
            }
            if (_isScaledSignIn) {
              setState(() {
                _isScaledSignIn = false;
              });
            }
          },
          child: Container(
            padding: EdgeInsets.all(30),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).padding.top),
                    Text(
                      "ShopCraft",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Your Premium Shopping",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Experience",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),

                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isScaled = !_isScaled;
                        });
                      },

                      child: AnimatedScale(
                        scale: _isScaled ? 1.05 : 1.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.05,
                            bottom: MediaQuery.of(context).size.height * 0.05,
                          ),
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/${images[0]}.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isScaled1 = !_isScaled1;
                        });
                      },
                      child: AnimatedScale(
                        scale: _isScaled1 ? 1.05 : 1.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 30),
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue,
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.pexels.com/photos/1087727/pexels-photo-1087727.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTapDown: (_) {
                        setState(() {
                          _isScaledSignUp = true;
                        });
                      },
                      child: AnimatedScale(
                        scale: _isScaledSignUp ? 1.1 : 1.0,
                        duration: Duration(milliseconds: 200),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTapDown: (_) {
                        setState(() {
                          _isScaledSignIn = true;
                        });
                      },
                      child: AnimatedScale(
                        scale: _isScaledSignIn ? 1.1 : 1.0,
                        duration: Duration(milliseconds: 200),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Sign In",
                            style: TextStyle(fontSize: 26),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: MediaQuery.of(context).padding.bottom),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
