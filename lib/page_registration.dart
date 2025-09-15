import 'package:flutter/material.dart';
import 'package:sprints_shopping_app/l10n/app_localizations.dart';
import 'package:sprints_shopping_app/page_signin.dart';
import 'package:sprints_shopping_app/page_signup.dart';

class PageRegistration extends StatefulWidget {
  final void Function(Locale) onChangeLanguage;
  const PageRegistration({super.key, required this.onChangeLanguage});

  @override
  State<PageRegistration> createState() => _PageRegistrationState();
}

class _PageRegistrationState extends State<PageRegistration> {
  bool _isScaled = false;
  bool _isScaled1 = false;
  bool _isScaledSignUp = false;
  bool _isScaledSignIn = false;

  @override
  Widget build(BuildContext context) {
    List images = ["3794933"];
    return Scaffold(
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
                  ElevatedButton(
                    onPressed: () =>
                        widget.onChangeLanguage(const Locale('en')),
                    child: const Text("English"),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        widget.onChangeLanguage(const Locale('ar')),
                    child: const Text("العربية"),
                  ),
                  SizedBox(height: MediaQuery.of(context).padding.top),

                  Text(
                    AppLocalizations.of(context)!.appTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    AppLocalizations.of(context)!.subtitle,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    AppLocalizations.of(context)!.subtitle1,
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
                            image: AssetImage("assets/images/${images[0]}.png"),
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
                      child: Builder(
                        builder: (context) => ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => SignUpPage(
                                  onChangeLanguage: widget.onChangeLanguage,
                                ),
                              ),
                            );
                          },
                          child: Text(
                            AppLocalizations.of(context)!.signup,
                            style: TextStyle(fontSize: 25),
                          ),
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
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SignInPage(
                                email: "",
                                password: "",
                                onChangeLanguage: widget.onChangeLanguage,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          AppLocalizations.of(context)!.signIn,
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                  // Text(AppLocalizations.of(context)!.login),
                  SizedBox(height: MediaQuery.of(context).padding.bottom),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
