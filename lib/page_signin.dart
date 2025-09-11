import 'package:flutter/material.dart';
import 'package:sprints_shopping_app/main_shopping_screen.dart';

class SignInPage extends StatefulWidget {
  final String email;
  final String password;

  const SignInPage({super.key, required this.email, required this.password});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  void initState() {
    super.initState();
    emailController.text = widget.email;
    passwordController.text = widget.password;
  }

  bool _isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: screenwidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 15,
                left: 20,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: screenheight * 0.03),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenheight * 0.03),
            Expanded(
              child: Container(
                width: screenwidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(height: screenheight * 0.07),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(
                                163,
                                21,
                                101,
                                220,
                              ).withOpacity(0.5),
                              offset: Offset(0, 10),
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.grey),
                                  ),
                                ),
                                child: TextFormField(
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    hintText: "  Email or Phone number",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Email is required ";
                                    }
                                    if (value != widget.email) {
                                      return "Incorrect password ";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: TextFormField(
                                  obscureText: !_isPasswordVisible,
                                  decoration: InputDecoration(
                                    hintText: "  Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _isPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isPasswordVisible =
                                              !_isPasswordVisible;
                                        });
                                      },
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Password is required ";
                                    }
                                    if (value != widget.password) {
                                      return "Incorrect password ";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: screenheight * 0.055),
                      Text(
                        "Forgot password",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: screenheight * 0.055),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 60),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 24, 131, 218),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: TextButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Account sign-in successfully"),
                                ),
                              );
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => MainShoppingScreen(),
                                ),
                              );
                            }
                          },
                          child: Center(
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenheight * 0.055),
                      // Text(
                      //   "Continue with social media",
                      //   style: TextStyle(
                      //     color: Colors.grey,
                      //     fontWeight: FontWeight.w600,
                      //   ),
                      // ),
                      // SizedBox(height: screenheight * 0.050),
                      // Row(
                      //   children: [
                      //     Expanded(
                      //       child: Container(
                      //         height: 50,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(50),
                      //           color: Colors.blue,
                      //         ),
                      //         child: Icon(Icons.facebook, size: 40),
                      //       ),
                      //     ),
                      //     SizedBox(width: screenwidth * 0.05),
                      //     Expanded(
                      //       child: Container(
                      //         height: 50,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(50),
                      //           color: Colors.blue,
                      //         ),
                      //         child: Image.asset(
                      //           "assets/images/github-mark.png",
                      //           width: 20,
                      //           height: 20,
                      //           scale: 6,
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
