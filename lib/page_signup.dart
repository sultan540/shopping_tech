import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprints_shopping_app/cubit_password.dart';
import 'package:sprints_shopping_app/page_signin.dart';

//String? savedEmail;
//String? savedPassword;
String? saveName;

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool _isPasswordVisible = true;
  bool _isconfirmPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: BlocProvider(
        create: (context) {
          return CubitPassword();
        },
        child: Container(
          padding: EdgeInsets.all(0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Form(
            key: _formey,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50, left: 10),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenheight * 0.04),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 37,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Join ShopCraft today",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenheight * 0.07),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          //height: MediaQuery.of(context).size.height * 0.75,
                          padding: EdgeInsets.only(
                            top: screenheight * 0.06,
                            left: 20,
                            right: 20,
                            bottom: screenheight * 0.03,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).padding.bottom,
                                ),
                                child: Container(
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
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        child: TextFormField(
                                          controller: nameController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            labelText: "  Enter your name",
                                          ),
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return "Please enter your name";
                                            }
                                            return null;
                                          },
                                        ),
                                      ),

                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        child: TextFormField(
                                          controller: emailController,

                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            labelText: "  Enter your email",
                                          ),
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return "Please enter your email";
                                            }
                                            if (!(value.contains("@"))) {
                                              return "Enter a valid email";
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      BlocBuilder<CubitPassword, Passwordstate>(
                                        builder: (context, state) {
                                          return Column(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                                child: TextFormField(
                                                  obscureText:
                                                      !_isPasswordVisible,
                                                  controller:
                                                      passwordController,
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    labelText:
                                                        "  Enter your password",

                                                    suffixIcon: IconButton(
                                                      icon: Icon(
                                                        _isPasswordVisible
                                                            ? Icons.visibility
                                                            : Icons
                                                                  .visibility_off,
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
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return "";
                                                    }
                                                    // if (value.length < 8) {
                                                    //   return "Password must be at least 6 characters";
                                                    // }
                                                    if (!RegExp(
                                                      r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
                                                    ).hasMatch(value)) {
                                                      return "";
                                                    }
                                                    return null;
                                                  },
                                                  onChanged: (value) {
                                                    context
                                                        .read<CubitPassword>()
                                                        .validatePassword(
                                                          value,
                                                        );
                                                  },
                                                ),
                                              ),
                                              Text(
                                                state.messagePassword,
                                                style: TextStyle(
                                                  color: state.isvalid
                                                      ? Colors.green
                                                      : Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),

                                      BlocBuilder<CubitPassword, Passwordstate>(
                                        builder: (context, state) {
                                          return Column(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                                child: TextFormField(
                                                  controller:
                                                      confirmPasswordController,
                                                  obscureText:
                                                      !_isconfirmPasswordVisible,
                                                  decoration: InputDecoration(
                                                    suffixIcon: IconButton(
                                                      onPressed: () {
                                                        // ignore: unused_element
                                                        setState(() {
                                                          _isconfirmPasswordVisible =
                                                              !_isconfirmPasswordVisible;
                                                        });
                                                      },
                                                      icon: Icon(
                                                        _isconfirmPasswordVisible
                                                            ? Icons.visibility
                                                            : Icons
                                                                  .visibility_off,
                                                      ),
                                                    ),
                                                    border: InputBorder.none,
                                                    labelText:
                                                        "  Confirm your password",
                                                  ),
                                                  validator: (value) {
                                                    if (value !=
                                                        passwordController
                                                            .text) {
                                                      return "";
                                                    }
                                                    if (value == null) {
                                                      return "";
                                                    }
                                                    return null;
                                                  },
                                                  onChanged: (value) {
                                                    context
                                                        .read<CubitPassword>()
                                                        .confirmPassword(
                                                          passwordController
                                                              .text,
                                                          value,
                                                        );
                                                  },
                                                ),
                                              ),
                                              Text(
                                                state.messageConfirmPassword,
                                                style: TextStyle(
                                                  color: state.isvalid
                                                      ? Colors.green
                                                      : Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      SizedBox(height: screenheight * 0.04),
                                      GestureDetector(
                                        onTap: () {
                                          if (_formey.currentState!
                                              .validate()) {
                                            addUser(
                                              emailController.text,
                                              passwordController.text,
                                            );

                                            saveName = nameController.text;
                                            addUser(
                                              emailController.text,
                                              passwordController.text,
                                            );
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "تم حفظ المستخدم",
                                                ),
                                              ),
                                            );

                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => SignInPage(
                                                  email: emailController.text,
                                                  password:
                                                      passwordController.text,
                                                ),
                                              ),
                                            );
                                          }
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                            horizontal: 60,
                                          ),
                                          height: 60,
                                          width: screenwidth,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                              255,
                                              24,
                                              131,
                                              218,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              50,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Create Account",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: screenheight * 0.03),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class UserData {
  final String email;
  final String password;

  UserData({required this.email, required this.password});
}

List<UserData> users = [];

void addUser(String email, String password) {
  users.add(UserData(email: email, password: password));
}
